import '../controller/message_chat_controller.dart';
import 'package:get/get.dart';

class MessageChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageChatController());
  }
}
