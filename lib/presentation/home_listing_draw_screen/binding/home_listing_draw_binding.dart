import '../controller/home_listing_draw_controller.dart';
import 'package:get/get.dart';

class HomeListingDrawBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListingDrawController());
  }
}
