import '../controller/add_new_property_meet_with_a_agent_controller.dart';
import '../models/dates_item_model.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/app_export.dart';

// ignore: must_be_immutable
class DatesItemWidget extends StatelessWidget {
  DatesItemWidget(this.datesItemModelObj);

  DatesItemModel datesItemModelObj;

  var controller = Get.find<AddNewPropertyMeetWithAAgentController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 20,
            top: 11,
            right: 20,
            bottom: 11,
          ),
          decoration: AppDecoration.outlineGray3002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  datesItemModelObj.weekdayTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium10.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.4,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 11,
                  top: 4,
                ),
                child: Obx(
                  () => Text(
                    datesItemModelObj.elevenTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeSemiBold24,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Text(
                    "lbl_jul".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeMedium12Bluegray500.copyWith(
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
      ),
    );
  }
}
