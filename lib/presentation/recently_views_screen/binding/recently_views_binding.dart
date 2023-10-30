import '../controller/recently_views_controller.dart';
import 'package:get/get.dart';

class RecentlyViewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyViewsController());
  }
}
