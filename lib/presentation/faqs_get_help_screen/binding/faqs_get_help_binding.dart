import '../controller/faqs_get_help_controller.dart';
import 'package:get/get.dart';

class FaqsGetHelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqsGetHelpController());
  }
}
