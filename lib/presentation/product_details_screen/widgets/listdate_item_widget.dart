import '../controller/product_details_controller.dart';
import '../models/listdate_item_model.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/app_export.dart';

// ignore: must_be_immutable
class ListdateItemWidget extends StatelessWidget {
  ListdateItemWidget(this.listdateItemModelObj);

  ListdateItemModel listdateItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                listdateItemModelObj.dateTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeMedium14Bluegray500,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Obx(
                () => Text(
                  listdateItemModelObj.listedforsaleTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeSemiBold16.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Text(
                "lbl_relax".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeMedium14Blue500,
              ),
            ),
          ],
        ),
        Padding(
          padding: getPadding(
            left: 150,
            top: 24,
            bottom: 25,
          ),
          child: Obx(
            () => Text(
              listdateItemModelObj.priceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeSemiBold16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
