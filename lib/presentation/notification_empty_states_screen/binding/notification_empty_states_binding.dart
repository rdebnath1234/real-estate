import '../controller/notification_empty_states_controller.dart';
import 'package:get/get.dart';

class NotificationEmptyStatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationEmptyStatesController());
  }
}
