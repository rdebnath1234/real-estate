import '../controller/add_new_property_time_to_sell_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyTimeToSellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyTimeToSellController());
  }
}
