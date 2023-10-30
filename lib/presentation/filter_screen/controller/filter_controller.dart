import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/filter_screen/models/filter_model.dart';import 'package:real_estate/widgets/custom_bottom_bar.dart';class FilterController extends GetxController {Rx<FilterModel> filterModelObj = FilterModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

SelectionPopupModel? selectedDropDownValue4;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; filterModelObj.value.dropdownItemList.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); filterModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { selectedDropDownValue1 = value as SelectionPopupModel; filterModelObj.value.dropdownItemList1.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); filterModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { selectedDropDownValue2 = value as SelectionPopupModel; filterModelObj.value.dropdownItemList2.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); filterModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { selectedDropDownValue3 = value as SelectionPopupModel; filterModelObj.value.dropdownItemList3.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); filterModelObj.value.dropdownItemList3.refresh(); } 
onSelected4(dynamic value) { selectedDropDownValue4 = value as SelectionPopupModel; filterModelObj.value.dropdownItemList4.value.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); filterModelObj.value.dropdownItemList4.refresh(); } 
 }
