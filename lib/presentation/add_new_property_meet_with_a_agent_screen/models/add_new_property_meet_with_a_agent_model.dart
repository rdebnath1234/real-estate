import 'package:get/get.dart';import 'dates_item_model.dart';import 'time_item_model.dart';class AddNewPropertyMeetWithAAgentModel {Rx<List<DatesItemModel>> datesItemList = Rx(List.generate(4,(index) => DatesItemModel()));

Rx<List<TimeItemModel>> timeItemList = Rx(List.generate(4,(index) => TimeItemModel()));

 }
