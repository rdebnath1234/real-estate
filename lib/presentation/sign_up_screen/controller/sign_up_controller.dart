import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';import 'package:riyadebnathdas_56313_s_application5/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';import 'package:riyadebnathdas_56313_s_application5/data/models/register/post_register_resp.dart';import 'package:riyadebnathdas_56313_s_application5/data/apiClient/api_client.dart';class SignUpController extends GetxController {TextEditingController fullnameController = TextEditingController();

TextEditingController phonenumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<bool> isShowPassword = true.obs;

PostRegisterResp postRegisterResp = PostRegisterResp();

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fullnameController.dispose(); phonenumberController.dispose(); passwordController.dispose(); } 
Future<void> callCreateRegister(Map req) async  { try{
postRegisterResp   =  await Get.find<ApiClient>().createRegister(headers: {'Content-type': 'application/json',}, requestData: req, );
_handleCreateRegisterSuccess();
} on PostRegisterResp catch(e)
{
postRegisterResp = e;
rethrow;
} } 
void _handleCreateRegisterSuccess() { 

Get.find<PrefUtils>().setId(postRegisterResp.data!.id!.toString()); } 
 }
