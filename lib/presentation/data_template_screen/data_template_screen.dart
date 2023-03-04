import 'controller/data_template_controller.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DataTemplateScreen extends GetWidget<DataTemplateController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 18, top: 15, right: 18, bottom: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgTemart,
                          height: getVerticalSize(320),
                          width: getHorizontalSize(321),
                          margin: getMargin(top: 14)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(301),
                              margin: getMargin(left: 9, top: 17, right: 13),
                              child: Text("msg_download_template".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold15))),
                      Container(
                          margin: getMargin(left: 6, top: 15, right: 163),
                          padding: getPadding(
                              left: 11, top: 7, right: 11, bottom: 7),
                          decoration: AppDecoration.fillIndigoA100.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder9),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUntitled101,
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(42)),
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 4, bottom: 6),
                                    child: Text("lbl_download".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold15WhiteA700))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(301),
                              margin: getMargin(left: 9, top: 16, right: 13),
                              child: Text("msg_download_template".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterSemiBold15))),
                      Container(
                          margin: getMargin(left: 6, top: 19, right: 163),
                          padding: getPadding(
                              left: 11, top: 6, right: 11, bottom: 6),
                          decoration: AppDecoration.fillIndigo50.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder9),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUntitled1101,
                                    height: getVerticalSize(30),
                                    width: getHorizontalSize(42),
                                    margin: getMargin(bottom: 2)),
                                Padding(
                                    padding:
                                        getPadding(left: 1, top: 7, bottom: 6),
                                    child: Text("lbl_upload".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterSemiBold15Indigo400))
                              ])),
                      CustomButton(
                          height: getVerticalSize(36),
                          text: "lbl_done".tr,
                          margin: getMargin(left: 3, top: 100, bottom: 0),
                          onTap: navigatetomainscreen)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(36),
                text: "lbl_skip".tr,
                margin: getMargin(left: 21, right: 20, bottom: 34),
                variant: ButtonVariant.OutlineIndigoA100_1,
                fontStyle: ButtonFontStyle.InterRegular12IndigoA100,
                onTap: skiptomainscreen)));
  }

  navigatetomainscreen() {
    Get.toNamed(AppRoutes.mainScreen);
  }

  skiptomainscreen() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
