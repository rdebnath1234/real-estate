import '../controller/notification_controller.dart';
import '../models/listhome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/app_export.dart';
import 'package:real_estate/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListhomeItemWidget extends StatelessWidget {
  ListhomeItemWidget(this.listhomeItemModelObj);

  ListhomeItemModel listhomeItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomIconButton(
          height: 44,
          width: 44,
          margin: getMargin(
            bottom: 18,
          ),
          variant: IconButtonVariant.FillBluegray50,
          shape: IconButtonShape.RoundedBorder10,
          padding: IconButtonPadding.PaddingAll12,
          child: CustomImageView(
            svgPath: ImageConstant.imgHome44x44,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listhomeItemModelObj.therearegooddeaOneTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeBold14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  210,
                ),
                margin: getMargin(
                  top: 4,
                ),
                child: Text(
                  "msg_lots_of_great_deals".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManrope12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            top: 3,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listhomeItemModelObj.distanceTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManrope12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.4,
                    ),
                  ),
                ),
              ),
              Container(
                height: getSize(
                  8,
                ),
                width: getSize(
                  8,
                ),
                margin: getMargin(
                  top: 17,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.blue500,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      4,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
