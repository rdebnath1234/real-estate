import '../models/options2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:riyadebnathdas_56313_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class Options2ItemWidget extends StatelessWidget {
  Options2ItemWidget(this.options2ItemModelObj);

  Options2ItemModel options2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 20,
          right: 20,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          options2ItemModelObj.freewifiTxt.value,
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
        selected: options2ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray50,
        selectedColor: ColorConstant.gray50,
        shape: options2ItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.gray5099,
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
                  color: ColorConstant.blueGray400,
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
          options2ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
