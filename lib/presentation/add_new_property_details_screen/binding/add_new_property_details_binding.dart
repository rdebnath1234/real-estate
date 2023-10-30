import '../controller/add_new_property_details_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyDetailsController());
  }
}
