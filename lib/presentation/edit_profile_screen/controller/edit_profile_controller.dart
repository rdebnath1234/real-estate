import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';import 'package:riyadebnathdas_56313_s_application5/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';import 'package:riyadebnathdas_56313_s_application5/data/models/me/get_me_resp.dart';import 'package:riyadebnathdas_56313_s_application5/data/apiClient/api_client.dart';import 'package:fluttertoast/fluttertoast.dart';class EditProfileController extends GetxController {TextEditingController fullnameOneController = TextEditingController();

TextEditingController emailOneController = TextEditingController();

TextEditingController addressOneController = TextEditingController();

TextEditingController passwordOneController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

GetMeResp getMeResp = GetMeResp();

@override Future<void> onReady() async  { super.onReady();try {
await this.callFetchMe();_onFetchMeSuccess();} on GetMeResp {_onFetchMeError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
@override void onClose() { super.onClose(); fullnameOneController.dispose(); emailOneController.dispose(); addressOneController.dispose(); passwordOneController.dispose(); } 
Future<void> callFetchMe() async  { try{
getMeResp   =  await Get.find<ApiClient>().fetchMe(headers: {'Content-type': 'application/json','Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY5NjYwOH0.ooqOoYB-4yP-kNz7weVH0TSQrZ1_edFf7AMqwWLIZNU',});
_handleFetchMeSuccess();
} on GetMeResp catch(e)
{
getMeResp = e;
rethrow;
} } 
void _handleFetchMeSuccess() { 

emailOneController.text = getMeResp.data!.email!.toString();fullnameOneController.text = getMeResp.data!.name!.toString(); } 
void _onFetchMeSuccess() {  } 
void _onFetchMeError() { 

Fluttertoast.showToast(msg: getMeResp.message!.toString(),); } 
 }
