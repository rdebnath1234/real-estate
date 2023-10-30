import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/product_details_screen/models/product_details_model.dart';class ProductDetailsController extends GetxController {Rx<ProductDetailsModel> productDetailsModelObj = ProductDetailsModel().obs;

Rx<int> silderIndex = 0.obs;

Rx<String> radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
