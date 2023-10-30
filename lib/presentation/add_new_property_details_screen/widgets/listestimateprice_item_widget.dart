import '../controller/add_new_property_details_controller.dart';
import '../models/listestimateprice_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class ListestimatepriceItemWidget extends StatelessWidget {
  ListestimatepriceItemWidget(this.listestimatepriceItemModelObj);

  ListestimatepriceItemModel listestimatepriceItemModelObj;

  var controller = Get.find<AddNewPropertyDetailsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 12,
        ),
        padding: getPadding(
          left: 12,
          top: 16,
          right: 12,
          bottom: 16,
        ),
        decoration: AppDecoration.fillBluegray5099.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Obx(
                () => Text(
                  listestimatepriceItemModelObj.estimatepriceTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium10.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.4,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Obx(
                () => Text(
                  listestimatepriceItemModelObj.priceTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeBold14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                36,
              ),
              margin: getMargin(
                top: 3,
              ),
              padding: getPadding(
                left: 8,
                top: 4,
                right: 8,
                bottom: 4,
              ),
              decoration: AppDecoration.txtFillRed40019.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder5,
              ),
              child: Obx(
                () => Text(
                  listestimatepriceItemModelObj.group34508Txt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeSemiBold10.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.4,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
