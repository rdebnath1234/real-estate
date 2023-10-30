import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';import 'package:flutter/material.dart';class SelectVirtualAppController extends GetxController {Rx<SelectVirtualAppModel> selectVirtualAppModelObj = SelectVirtualAppModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); selectVirtualAppModelObj.value.listwhatsappItemList.forEach((element) {element.streetaddressController.dispose();}); } 
 }
