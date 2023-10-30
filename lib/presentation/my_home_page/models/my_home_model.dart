import 'package:get/get.dart';import 'my_home_item_model.dart';class MyHomeModel {Rx<List<MyHomeItemModel>> myHomeItemList = Rx(List.generate(3,(index) => MyHomeItemModel()));

 }
