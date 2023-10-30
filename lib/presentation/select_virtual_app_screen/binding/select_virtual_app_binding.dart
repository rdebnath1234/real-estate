import '../controller/select_virtual_app_controller.dart';
import 'package:get/get.dart';

class SelectVirtualAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectVirtualAppController());
  }
}
