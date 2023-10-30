import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/my_home_page/models/my_home_model.dart';class MyHomeController extends GetxController {MyHomeController(this.myHomeModelObj);

Rx<MyHomeModel> myHomeModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
