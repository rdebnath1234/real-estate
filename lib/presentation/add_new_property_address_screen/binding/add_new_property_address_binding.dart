import '../controller/add_new_property_address_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyAddressController());
  }
}
