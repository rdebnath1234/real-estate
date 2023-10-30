import '../controller/verify_phone_number_controller.dart';
import 'package:get/get.dart';

class VerifyPhoneNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyPhoneNumberController());
  }
}
