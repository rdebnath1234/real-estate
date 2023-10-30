import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/sign_in_screen/models/sign_in_model.dart';import 'package:flutter/material.dart';import 'package:real_estate/data/models/login/post_login_resp.dart';import 'package:real_estate/data/apiClient/api_client.dart';class SignInController extends GetxController {TextEditingController phonenumberController = TextEditingController();

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
