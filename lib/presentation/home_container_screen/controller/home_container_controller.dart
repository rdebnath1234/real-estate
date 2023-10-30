import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/home_container_screen/models/home_container_model.dart';import 'package:real_estate/widgets/custom_bottom_bar.dart';class HomeContainerController extends GetxController {var token = Get.arguments[NavigationArgs.token];

var id = Get.arguments[NavigationArgs.id];

Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
@override void onInit() {  } 
 }
