import '../controller/pick_date_controller.dart';
import 'package:get/get.dart';

class PickDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PickDateController());
  }
}
