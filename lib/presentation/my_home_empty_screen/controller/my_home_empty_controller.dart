import 'package:real_estate/core/app_export.dart';
import 'package:real_estate/presentation/my_home_empty_screen/models/my_home_empty_model.dart';
import 'package:real_estate/widgets/custom_bottom_bar.dart';

class MyHomeEmptyController extends GetxController {
  Rx<MyHomeEmptyModel> myHomeEmptyModelObj = MyHomeEmptyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
