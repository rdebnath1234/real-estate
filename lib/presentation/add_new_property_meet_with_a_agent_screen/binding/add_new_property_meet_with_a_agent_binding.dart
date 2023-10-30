import '../controller/add_new_property_meet_with_a_agent_controller.dart';
import 'package:get/get.dart';

class AddNewPropertyMeetWithAAgentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyMeetWithAAgentController());
  }
}
