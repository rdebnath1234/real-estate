import '../controller/add_new_property_contact_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyContactController());
  }
}
