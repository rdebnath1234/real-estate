import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/message_page/models/message_model.dart';class MessageController extends GetxController {MessageController(this.messageModelObj);

Rx<MessageModel> messageModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
