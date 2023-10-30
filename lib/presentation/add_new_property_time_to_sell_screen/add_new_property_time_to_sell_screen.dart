import 'controller/add_new_property_time_to_sell_controller.dart';import 'package:flutter/material.dart';import 'package:real_estate/core/app_export.dart';import 'package:real_estate/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:real_estate/widgets/app_bar/appbar_subtitle.dart';import 'package:real_estate/widgets/app_bar/custom_app_bar.dart';import 'package:real_estate/widgets/custom_button.dart';import 'package:real_estate/widgets/custom_text_form_field.dart';class AddNewPropertyTimeToSellScreen extends GetWidget<AddNewPropertyTimeToSellController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray50, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 64, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: () {onTapArrowleft7();}), centerTitle: true, title: AppbarSubtitle(text: "msg_add_new_propert".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 32, right: 24, bottom: 32), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 6, bottom: 6), child: Text("lbl_time_to_sell".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeSemiBold14Gray900)), CustomButton(height: getVerticalSize(33), width: getHorizontalSize(78), text: "lbl_03_08".tr, fontStyle: ButtonFontStyle.ManropeSemiBold14WhiteA700_1)]), Padding(padding: getPadding(top: 16), child: Container(height: getVerticalSize(6), width: getHorizontalSize(327), decoration: BoxDecoration(color: ColorConstant.blueGray50, borderRadius: BorderRadius.circular(getHorizontalSize(3))), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(3)), child: LinearProgressIndicator(value: 0.37, backgroundColor: ColorConstant.blueGray50, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blue500))))), Padding(padding: getPadding(top: 26), child: Text("msg_how_soon_do_you".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeBold18.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomTextFormField(focusNode: FocusNode(), controller: controller.durationController, hintText: "lbl_within_3_days".tr, margin: getMargin(top: 13), variant: TextFormFieldVariant.OutlineGray300, fontStyle: TextFormFieldFontStyle.ManropeSemiBold14Gray900), CustomTextFormField(focusNode: FocusNode(), controller: controller.streetaddressController, hintText: "lbl_within_1_week".tr, margin: getMargin(top: 8), variant: TextFormFieldVariant.OutlineGray300, fontStyle: TextFormFieldFontStyle.ManropeSemiBold14Gray900), CustomTextFormField(focusNode: FocusNode(), controller: controller.durationOneController, hintText: "lbl_within_1_month".tr, margin: getMargin(top: 8), variant: TextFormFieldVariant.OutlineGray300, fontStyle: TextFormFieldFontStyle.ManropeSemiBold14Gray900), CustomTextFormField(focusNode: FocusNode(), controller: controller.durationTwoController, hintText: "lbl_within_2_months".tr, margin: getMargin(top: 8), variant: TextFormFieldVariant.OutlineGray300, fontStyle: TextFormFieldFontStyle.ManropeSemiBold14Gray900), CustomTextFormField(focusNode: FocusNode(), controller: controller.durationThreeController, hintText: "msg_in_more_than_2".tr, margin: getMargin(top: 8), variant: TextFormFieldVariant.OutlineGray300, fontStyle: TextFormFieldFontStyle.ManropeSemiBold14Gray900), CustomTextFormField(focusNode: FocusNode(), controller: controller.streetaddressOneController, hintText: "lbl_i_m_not_sure".tr, margin: getMargin(top: 8, bottom: 5), variant: TextFormFieldVariant.OutlineGray300, fontStyle: TextFormFieldFontStyle.ManropeSemiBold14Gray900, textInputAction: TextInputAction.done)])), bottomNavigationBar: Container(padding: getPadding(all: 24), decoration: AppDecoration.outlineBluegray1000f, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(height: getVerticalSize(56), text: "lbl_next".tr, shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingAll16, fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1, onTap: () {onTapNext();})])))); } 
onTapNext() { Get.toNamed(AppRoutes.addNewPropertyReasonSellingHomeScreen, ); } 
onTapArrowleft7() { Get.back(); } 
 }
