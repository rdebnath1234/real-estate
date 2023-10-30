import '../controller/home_listing_controller.dart';
import 'package:get/get.dart';

class HomeListingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListingController());
  }
}
