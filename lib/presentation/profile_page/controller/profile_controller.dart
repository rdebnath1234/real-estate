import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/profile_page/models/profile_model.dart';class ProfileController extends GetxController {ProfileController(this.profileModelObj);

Rx<ProfileModel> profileModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
