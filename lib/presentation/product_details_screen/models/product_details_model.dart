import 'package:get/get.dart';import 'sliderarrowleft_item_model.dart';import 'listfive_item_model.dart';import 'listdate_item_model.dart';import 'listrectangle4224_item_model.dart';class ProductDetailsModel {Rx<List<SliderarrowleftItemModel>> sliderarrowleftItemList = Rx(List.generate(1,(index) => SliderarrowleftItemModel()));

Rx<List<ListfiveItemModel>> listfiveItemList = Rx(List.generate(5,(index) => ListfiveItemModel()));

Rx<List<ListdateItemModel>> listdateItemList = Rx(List.generate(5,(index) => ListdateItemModel()));

Rx<List<Listrectangle4224ItemModel>> listrectangle4224ItemList = Rx(List.generate(3,(index) => Listrectangle4224ItemModel()));

 }
