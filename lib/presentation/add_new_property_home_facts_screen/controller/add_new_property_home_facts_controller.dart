import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';import 'package:riyadebnathdas_56313_s_application5/presentation/add_new_property_home_facts_screen/models/add_new_property_home_facts_model.dart';import 'package:flutter/material.dart';class AddNewPropertyHomeFactsController extends GetxController {TextEditingController inputController = TextEditingController();

TextEditingController inputOneController = TextEditingController();

TextEditingController inputTwoController = TextEditingController();

TextEditingController inputThreeController = TextEditingController();

TextEditingController inputFourController = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController priceOneController = TextEditingController();

Rx<AddNewPropertyHomeFactsModel> addNewPropertyHomeFactsModelObj = AddNewPropertyHomeFactsModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputController.dispose(); inputOneController.dispose(); inputTwoController.dispose(); inputThreeController.dispose(); inputFourController.dispose(); priceController.dispose(); priceOneController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; addNewPropertyHomeFactsModelObj.value.dropdownItemList.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); addNewPropertyHomeFactsModelObj.value.dropdownItemList.refresh(); } 
 }
