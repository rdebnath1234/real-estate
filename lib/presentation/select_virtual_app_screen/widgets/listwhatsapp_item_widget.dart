import '../controller/select_virtual_app_controller.dart';
import '../models/listwhatsapp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/app_export.dart';
import 'package:real_estate/widgets/custom_icon_button.dart';
import 'package:real_estate/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ListwhatsappItemWidget extends StatelessWidget {
  ListwhatsappItemWidget(this.listwhatsappItemModelObj);

  ListwhatsappItemModel listwhatsappItemModelObj;

  var controller = Get.find<SelectVirtualAppController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 20,
          top: 10,
          right: 20,
          bottom: 10,
        ),
        decoration: AppDecoration.outlineGray3002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 48,
                  width: 48,
                  variant: IconButtonVariant.FillGray50,
                  shape: IconButtonShape.CircleBorder24,
                  padding: IconButtonPadding.PaddingAll12,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgWhatsapp,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          listwhatsappItemModelObj.whatsappOneTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeExtraBold16Gray900.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Text(
                          "lbl_recommend".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtManropeMedium12Bluegray500.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.4,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomIconButton(
                  height: 24,
                  width: 24,
                  margin: getMargin(
                    top: 1,
                    bottom: 12,
                  ),
                  variant: IconButtonVariant.FillBlue500,
                  shape: IconButtonShape.RoundedBorder10,
                  padding: IconButtonPadding.PaddingAll5,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCheckmark14x14,
                  ),
                ),
              ],
            ),
            CustomTextFormField(
              focusNode: FocusNode(),
              controller: listwhatsappItemModelObj.streetaddressController,
              hintText: "lbl_email".tr,
              margin: getMargin(
                top: 3,
              ),
              textInputAction: TextInputAction.done,
            ),
          ],
        ),
      ),
    );
  }
}
