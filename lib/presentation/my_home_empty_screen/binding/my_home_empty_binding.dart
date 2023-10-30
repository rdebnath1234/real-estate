import '../controller/my_home_empty_controller.dart';
import 'package:get/get.dart';

class MyHomeEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyHomeEmptyController());
  }
}
