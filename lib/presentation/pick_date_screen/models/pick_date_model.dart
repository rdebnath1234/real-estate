import 'package:get/get.dart';import 'dates1_item_model.dart';import 'time1_item_model.dart';class PickDateModel {Rx<List<Dates1ItemModel>> dates1ItemList = Rx(List.generate(4,(index) => Dates1ItemModel()));

Rx<List<Time1ItemModel>> time1ItemList = Rx(List.generate(4,(index) => Time1ItemModel()));

 }
