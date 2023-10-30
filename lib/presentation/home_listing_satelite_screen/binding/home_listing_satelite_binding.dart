import '../controller/home_listing_satelite_controller.dart';
import 'package:get/get.dart';

class HomeListingSateliteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListingSateliteController());
  }
}
