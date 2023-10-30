import 'controller/home_container_controller.dart';import 'package:flutter/material.dart';import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/home_page/home_page.dart';import 'package:real_estate/presentation/home_search_page/home_search_page.dart';import 'package:real_estate/presentation/message_page/message_page.dart';import 'package:real_estate/presentation/my_home_page/my_home_page.dart';import 'package:real_estate/presentation/profile_page/profile_page.dart';import 'package:real_estate/widgets/custom_bottom_bar.dart';class HomeContainerScreen extends GetWidget<HomeContainerController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.homePage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.homePage; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.homePage: return HomePage(); case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
