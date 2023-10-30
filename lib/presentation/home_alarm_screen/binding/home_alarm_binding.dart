import '../controller/home_alarm_controller.dart';
import 'package:get/get.dart';

class HomeAlarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeAlarmController());
  }
}
