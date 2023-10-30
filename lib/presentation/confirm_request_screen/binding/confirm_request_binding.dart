import '../controller/confirm_request_controller.dart';
import 'package:get/get.dart';

class ConfirmRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmRequestController());
  }
}
