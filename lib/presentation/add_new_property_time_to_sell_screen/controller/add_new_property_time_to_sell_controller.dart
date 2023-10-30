import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/add_new_property_time_to_sell_screen/models/add_new_property_time_to_sell_model.dart';import 'package:flutter/material.dart';class AddNewPropertyTimeToSellController extends GetxController {TextEditingController durationController = TextEditingController();

TextEditingController streetaddressController = TextEditingController();

TextEditingController durationOneController = TextEditingController();

TextEditingController durationTwoController = TextEditingController();

TextEditingController durationThreeController = TextEditingController();

TextEditingController streetaddressOneController = TextEditingController();

Rx<AddNewPropertyTimeToSellModel> addNewPropertyTimeToSellModelObj = AddNewPropertyTimeToSellModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); durationController.dispose(); streetaddressController.dispose(); durationOneController.dispose(); durationTwoController.dispose(); durationThreeController.dispose(); streetaddressOneController.dispose(); } 
 }
