import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';import 'package:riyadebnathdas_56313_s_application5/presentation/sign_in_screen/models/sign_in_model.dart';import 'package:flutter/material.dart';import 'package:riyadebnathdas_56313_s_application5/data/models/login/post_login_resp.dart';import 'package:riyadebnathdas_56313_s_application5/data/apiClient/api_client.dart';class SignInController extends GetxController {TextEditingController phonenumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignInModel> signInModelObj = SignInModel().obs;

Rx<bool> isShowPassword = true.obs;

PostLoginResp postLoginResp = PostLoginResp();

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); phonenumberController.dispose(); passwordController.dispose(); } 
Future<void> callCreateLogin(Map req) async  { try{
postLoginResp   =  await Get.find<ApiClient>().createLogin(headers: {'Content-type': 'application/json',}, requestData: req, );
_handleCreateLoginSuccess();
} on PostLoginResp catch(e)
{
postLoginResp = e;
rethrow;
} } 
void _handleCreateLoginSuccess() { 

Get.find<PrefUtils>().setToken(postLoginResp.data!.token!.toString()); } 
 }
