import '../select_class_screen/widgets/selectclass_item_widget.dart';
import 'controller/select_class_controller.dart';
import 'models/selectclass_item_model.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
class SelectClassScreen extends GetWidget<SelectClassController> {
  var Data=Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 71, top: 30, right: 71, bottom: 30),
                              decoration: AppDecoration
                                  .gradientIndigoA20001Indigo40001
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.customBorderBL35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 34),
                                        child: Text("lbl_select_class".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLexendMedium38))
                                  ]))),

                      Padding(
                          padding: getPadding(left: 20, right: 20,top:10),
                          child:
                          Obx(() => ListView.separated(

                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(23));
                              },
                              itemCount: controller.selectClassModelObj.value
                                  .selectclassItemList.length,
                              itemBuilder: (context, index) {
                                SelectclassItemModel model = controller
                                    .selectClassModelObj
                                    .value
                                    .selectclassItemList[index];

                                  return SelectclassItemWidget(
                                      model, className: Data);
                                }))),
                      CustomButton(
                          height: getVerticalSize(36),
                          text: "lbl_next".tr,
                          margin: getMargin(
                              left: 20, top: 29, right: 21, bottom: 0),
                          onTap: navigatetoattendance)
                    ])





            ),

            bottomNavigationBar: CustomButton(
                height: getVerticalSize(36),
                onTap: navigatetomaine,
                text: "lbl_back".tr,
                margin: getMargin(left: 20, right: 21, bottom: 34),
                variant: ButtonVariant.OutlineIndigoA100_1,
                fontStyle: ButtonFontStyle.InterRegular12IndigoA100)));
  }

  navigatetoattendance() {
    Get.toNamed(AppRoutes.attendanceScreen);
  }
  navigatetomaine() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}


