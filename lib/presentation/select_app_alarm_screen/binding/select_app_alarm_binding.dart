import '../controller/select_app_alarm_controller.dart';
import 'package:get/get.dart';

class SelectAppAlarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectAppAlarmController());
  }
}
