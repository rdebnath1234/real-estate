import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/add_new_property_contact_screen/models/add_new_property_contact_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';class AddNewPropertyContactController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<AddNewPropertyContactModel> addNewPropertyContactModelObj = AddNewPropertyContactModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
 }
