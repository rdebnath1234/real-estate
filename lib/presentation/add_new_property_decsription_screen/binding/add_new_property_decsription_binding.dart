import '../controller/add_new_property_decsription_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyDecsriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyDecsriptionController());
  }
}
