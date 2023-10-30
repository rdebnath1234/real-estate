import 'package:get/get.dart';import 'message_item_model.dart';class MessageModel {Rx<List<MessageItemModel>> messageItemList = Rx(List.generate(5,(index) => MessageItemModel()));

 }
