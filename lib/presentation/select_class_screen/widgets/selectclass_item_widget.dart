import '../controller/select_class_controller.dart';
import '../models/selectclass_item_model.dart';
import 'package:final_2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectclassItemWidget extends StatelessWidget {
  SelectclassItemModel model;
  var className;

  SelectclassItemWidget(this.model, {required this.className});

  var controller = Get.find<SelectClassController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 17,
        top: 18,
        right: 17,
        bottom: 18,
      ),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        children: [
          Container(
            width: getSize(
              48,
            ),
            padding: getPadding(
              left: 9,
              top: 1,
              right: 9,
              bottom: 1,
            ),
            decoration: AppDecoration.txtFillIndigoA10001.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder12,
            ),
            child: Text(
              "lbl_m".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLexendSemiBold34,
            ),
          ),
          Container(
            height: getVerticalSize(
              39,
            ),
            width: getHorizontalSize(
              63,
            ),
            margin: getMargin(
              left: 28,
              top: 3,
              bottom: 4,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    className[0],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLexendSemiBold18,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    className[1],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLexendSemiBold13,
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
