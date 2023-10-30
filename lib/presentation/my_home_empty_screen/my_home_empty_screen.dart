import 'controller/my_home_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application5/presentation/home_page/home_page.dart';
import 'package:riyadebnathdas_56313_s_application5/presentation/home_search_page/home_search_page.dart';
import 'package:riyadebnathdas_56313_s_application5/presentation/message_page/message_page.dart';
import 'package:riyadebnathdas_56313_s_application5/presentation/my_home_page/my_home_page.dart';
import 'package:riyadebnathdas_56313_s_application5/presentation/profile_page/profile_page.dart';
import 'package:riyadebnathdas_56313_s_application5/widgets/custom_bottom_bar.dart';
import 'package:riyadebnathdas_56313_s_application5/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class MyHomeEmptyScreen extends GetWidget<MyHomeEmptyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 25,
            right: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrame,
                height: getSize(
                  255,
                ),
                width: getSize(
                  255,
                ),
                margin: getMargin(
                  top: 7,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 63,
                ),
                child: Text(
                  "msg_ready_to_sell_y".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeExtraBold20.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  324,
                ),
                margin: getMargin(
                  top: 6,
                ),
                child: Text(
                  "msg_relax_is_making".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtManrope16.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.3,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  45,
                ),
                width: getHorizontalSize(
                  155,
                ),
                text: "lbl_add_property".tr,
                margin: getMargin(
                  top: 25,
                ),
                shape: ButtonShape.RoundedBorder10,
                padding: ButtonPadding.PaddingAll13,
                fontStyle: ButtonFontStyle.ManropeBold14WhiteA700,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Discover:
        return AppRoutes.homeSearchPage;
      case BottomBarEnum.Myhome:
        return AppRoutes.myHomePage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.homeSearchPage:
        return HomeSearchPage();
      case AppRoutes.myHomePage:
        return MyHomePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
