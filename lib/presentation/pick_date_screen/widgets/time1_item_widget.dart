import '../controller/pick_date_controller.dart';
import '../models/time1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/app_export.dart';

// ignore: must_be_immutable
class Time1ItemWidget extends StatelessWidget {
  Time1ItemWidget(this.time1ItemModelObj);

  Time1ItemModel time1ItemModelObj;

  var controller = Get.find<PickDateController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            83,
          ),
          margin: getMargin(
            right: 10,
          ),
          padding: getPadding(
            left: 13,
            top: 10,
            right: 13,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder8,
          ),
          child: Obx(
            () => Text(
              time1ItemModelObj.timeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeSemiBold14Gray900,
            ),
          ),
        ),
      ),
    );
  }
}
