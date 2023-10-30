import '../controller/add_new_property_reason_selling_home_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyReasonSellingHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyReasonSellingHomeController());
  }
}
