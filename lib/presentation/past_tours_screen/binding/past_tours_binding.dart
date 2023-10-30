import '../controller/past_tours_controller.dart';
import 'package:get/get.dart';

class PastToursBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PastToursController());
  }
}
