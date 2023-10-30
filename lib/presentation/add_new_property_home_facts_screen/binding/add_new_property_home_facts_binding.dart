import '../controller/add_new_property_home_facts_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyHomeFactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyHomeFactsController());
  }
}
