import '../models/options_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget(this.optionsItemModelObj);

  OptionsItemModel optionsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: getPadding(
            left: 20,
            right: 20,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            optionsItemModelObj.freewifiTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstant.gray900,
              fontSize: getFontSize(
                14,
              ),
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w500,
            ),
          ),
          selected: optionsItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.gray90033,
          shape: optionsItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.blueGray500,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      18,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.blueGray500,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      18,
                    ),
                  ),
                ),
          onSelected: (value) {
            optionsItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
