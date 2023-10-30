import '../controller/product_details_controller.dart';
import '../models/sliderarrowleft_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';
import 'package:riyadebnathdas_56313_s_application5/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SliderarrowleftItemWidget extends StatelessWidget {
  SliderarrowleftItemWidget(this.sliderarrowleftItemModelObj);

  SliderarrowleftItemModel sliderarrowleftItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getSize(
          343,
        ),
        width: getSize(
          343,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage343x3431,
              height: getSize(
                343,
              ),
              width: getSize(
                343,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  20,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 40,
                          width: 40,
                          variant: IconButtonVariant.OutlineGray5066,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                          ),
                        ),
                        CustomIconButton(
                          height: 40,
                          width: 40,
                          variant: IconButtonVariant.OutlineGray5066,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCall1,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 190,
                      ),
                      child: Text(
                        "msg_primary_apartme".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeExtraBold24WhiteA700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "msg_701_ocean_avenue".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeMedium14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
