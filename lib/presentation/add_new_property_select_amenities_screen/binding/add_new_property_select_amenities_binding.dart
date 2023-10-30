import '../controller/add_new_property_select_amenities_controller.dart';
import 'package:get/get.dart';

class AddNewPropertySelectAmenitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertySelectAmenitiesController());
  }
}
