import 'package:get/get.dart';import 'listhome_item_model.dart';import 'listchartline_item_model.dart';class NotificationModel {Rx<List<ListhomeItemModel>> listhomeItemList = Rx(List.generate(2,(index) => ListhomeItemModel()));

Rx<List<ListchartlineItemModel>> listchartlineItemList = Rx(List.generate(3,(index) => ListchartlineItemModel()));

 }
