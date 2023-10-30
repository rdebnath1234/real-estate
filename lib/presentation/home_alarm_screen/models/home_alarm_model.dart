import 'package:get/get.dart';import 'home_alarm_item_model.dart';import 'package:real_estate/data/models/selectionPopupModel/selection_popup_model.dart';class HomeAlarmModel {Rx<List<HomeAlarmItemModel>> homeAlarmItemList = Rx(List.generate(2,(index) => HomeAlarmItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
