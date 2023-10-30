import '../controller/confirm_request_bottom_sheet_controller.dart';
import '../models/gridhome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class GridhomeItemWidget extends StatelessWidget {
  GridhomeItemWidget(this.gridhomeItemModelObj);

  GridhomeItemModel gridhomeItemModelObj;

  var controller = Get.find<ConfirmRequestBottomSheetController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 13,
        top: 12,
        right: 13,
        bottom: 12,
      ),
      decoration: AppDecoration.outlineGray3002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 40,
            width: 40,
            variant: IconButtonVariant.FillBluegray50,
            child: CustomImageView(
              svgPath: ImageConstant.imgHome44x44,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 5,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    gridhomeItemModelObj.homeclosedTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.4,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    gridhomeItemModelObj.twentyFiveTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeExtraBold14Gray900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
