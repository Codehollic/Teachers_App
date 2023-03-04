import 'package:final_2/core/constants/constants.dart';
import 'controller/setup_schedule_controller.dart';
import 'package:final_2/core/app_export.dart';
import 'package:final_2/widgets/app_bar/appbar_image.dart';
import 'package:final_2/widgets/app_bar/custom_app_bar.dart';
import 'package:final_2/widgets/custom_button.dart';
import 'package:final_2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
class SetupScheduleScreen extends GetWidget<SetupScheduleController> {
  final inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(top: 31, bottom: 31),
                              decoration:
                                  AppDecoration.gradientIndigo400Indigo200,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(71),
                                        title: Container(
                                            height: getVerticalSize(62.060005),
                                            width: getHorizontalSize(171),
                                            margin: getMargin(left: 44),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 14),
                                                          child: Text(
                                                              "lbl_schedule".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtLexendMedium38))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 7,
                                                              right: 112,
                                                              bottom: 39),
                                                          child: Text(
                                                              "lbl_setup".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtLexendMedium18)))
                                                ])),
                                        actions: [
                                          AppbarImage(
                                              height: getVerticalSize(66),
                                              width: getHorizontalSize(100),
                                              imagePath:
                                                  ImageConstant.img6274011,
                                              margin: getMargin(
                                                  right: 44, bottom: 5))
                                        ]),
                                    Container(

                                         margin: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),

                                        height: 70,

                                        child: ListView(
                                            scrollDirection: Axis.horizontal,

                                            children: [

                                              ElevatedButton(
                                                  onPressed: controller.toggleButton,
                                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                        (Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        // Button is currently highlighted
                                                        return Color(0xFF7885FF);
                                                      }
                                                      // Button is not currently highlighted
                                                      return controller.isButtonEnabled.value
                                                          ? Color(0xFF7885FF)
                                                          : ColorConstant.whiteA700;
                                                    },

                                                  ), // pressed color
                                                    padding: MaterialStateProperty.all(getPadding(
                                                        left: 1,
                                                        top: 15,
                                                        right: 1,
                                                        bottom: 15)),


                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder12)), ),

                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_m".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(28),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),
                                                      TextSpan(
                                                          text: "lbl_O".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(20),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),

                                                    ]),
                                                    textAlign: TextAlign.left,
                                                  )),
                                              SizedBox(
                                                width: 10,),

                                              ElevatedButton(
                                                  onPressed: controller.toggleButton,
                                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                          (Set<MaterialState> states) {
                                                        if (states.contains(MaterialState.pressed)) {
                                                          // Button is currently highlighted
                                                          return Color(0xFF7885FF);
                                                        }
                                                        // Button is not currently highlighted
                                                        return controller.isButtonEnabled.value
            ? Color(0xFF7885FF)
            : ColorConstant.whiteA700;
                                                      },

                                                      ), // pressed color
                                                    padding: MaterialStateProperty.all(getPadding(
                                                        left: 1,
                                                        top: 15,
                                                        right: 1,
                                                        bottom: 15)),


                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder12)), ),

                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_t".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(28),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),
                                                      TextSpan(
                                                          text: "lbl_u".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(20),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),


                                                    ]),
                                                    textAlign: TextAlign.left,
                                                  )),
                                              SizedBox(
                                                width: 10,),
                                              ElevatedButton(
                                                  onPressed: controller.toggleButton,
                                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                        (Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        // Button is currently highlighted
                                                        return Color(0xFF7885FF);
                                                      }
                                                      // Button is not currently highlighted
                                                      return controller.isButtonEnabled.value
                                                          ? Color(0xFF7885FF)
                                                          : ColorConstant.whiteA700;
                                                    },

                                                  ), // pressed color
                                                    padding: MaterialStateProperty.all(getPadding(
                                                        left: 1,
                                                        top: 15,
                                                        right: 1,
                                                        bottom: 15)),


                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder12)), ),

                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_w".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(28),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),
                                                      TextSpan(
                                                          text: "lbl_e".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(20),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),



                                                    ]),
                                                    textAlign: TextAlign.left,
                                                  )),
                                              SizedBox(
                                                width: 10,),
                                              ElevatedButton(
                                                  onPressed: controller.toggleButton,
                                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                        (Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        // Button is currently highlighted
                                                        return Color(0xFF7885FF);
                                                      }
                                                      // Button is not currently highlighted
                                                      return controller.isButtonEnabled.value
                                                          ? Color(0xFF7885FF)
                                                          : ColorConstant.whiteA700;
                                                    },

                                                  ), // pressed color
                                                    padding: MaterialStateProperty.all(getPadding(
                                                        left: 1,
                                                        top: 15,
                                                        right: 1,
                                                        bottom: 15)),


                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder12)), ),

                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_t".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(28),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),
                                                      TextSpan(
                                                          text: "lbl_h".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(20),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),


                                                    ]),
                                                    textAlign: TextAlign.left,
                                                  )),



                                              SizedBox(
                                                width: 10,),
                                              ElevatedButton(
                                                  onPressed: controller.toggleButton,
                                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                        (Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        // Button is currently highlighted
                                                        return Color(0xFF7885FF);
                                                      }
                                                      // Button is not currently highlighted
                                                      return controller.isButtonEnabled.value
                                                          ? Color(0xFF7885FF)
                                                          : ColorConstant.whiteA700;
                                                    },

                                                  ), // pressed color
                                                    padding: MaterialStateProperty.all(getPadding(
                                                        left: 1,
                                                        top: 15,
                                                        right: 1,
                                                        bottom: 15)),


                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder12)), ),

                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_f".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(28),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),
                                                      TextSpan(
                                                          text: "lbl_r".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(20),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),


                                                    ]),
                                                    textAlign: TextAlign.left,
                                                  )),
                                              SizedBox(
                                                width: 10,),
                                              ElevatedButton(
                                                  onPressed: controller.toggleButton,
                                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                        (Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        // Button is currently highlighted
                                                        return Color(0xFF7885FF);
                                                      }
                                                      // Button is not currently highlighted
                                                      return controller.isButtonEnabled.value
                                                          ? Color(0xFF7885FF)
                                                          : ColorConstant.whiteA700;
                                                    },

                                                  ), // pressed color
                                                    padding: MaterialStateProperty.all(getPadding(
                                                        left: 1,
                                                        top: 15,
                                                        right: 1,
                                                        bottom: 15)),


                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder12)), ),

                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_s".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(28),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),
                                                      TextSpan(
                                                          text: "lbl_a".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(20),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),

                                                    ]),
                                                    textAlign: TextAlign.left,
                                                  )),
                                              SizedBox(
                                                width: 10,),
                                              ElevatedButton(
                                                  onPressed: controller.toggleButton,
                                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                                        (Set<MaterialState> states) {
                                                      if (states.contains(MaterialState.pressed)) {
                                                        // Button is currently highlighted
                                                        return Color(0xFF7885FF);
                                                      }
                                                      // Button is not currently highlighted
                                                      return controller.isButtonEnabled.value
                                                          ? Color(0xFF7885FF)
                                                          : ColorConstant.whiteA700;
                                                    },

                                                  ), // pressed color
                                                    padding: MaterialStateProperty.all(getPadding(
                                                        left: 1,
                                                        top: 15,
                                                        right: 1,
                                                        bottom: 15)),


                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder12)), ),

                                                  child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_s".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(28),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),
                                                      TextSpan(
                                                          text: "lbl_u".tr,
                                                          style: TextStyle(
                                                              color: Colors.grey[400],
                                                              fontSize: getFontSize(20),
                                                              fontFamily: 'Inter',
                                                              fontWeight: FontWeight.w600)),

                                                    ]),
                                                    textAlign: TextAlign.left,
                                                  )),
                                            ]))
                                  ]))),




                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding: getPadding(
                                      left: 18, top: 46, right: 18, bottom: 46),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL35),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_class_name".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              SizedBox(height: 20),

                                              CustomTextFormField(


                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .inputController,
                                                  margin: getMargin(top: 0),
                                                  variant: TextFormFieldVariant
                                                      .OutlineBlack90060,
                                                  prefix: Container(
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 4,
                                                          right: 4,
                                                          bottom: 4),
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 8,
                                                          right: 10,
                                                          bottom: 8),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .blueGray90019,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10))),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant.claclassn)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(37)),
                                                          suffix: Container(margin: getMargin(left: 30, top: 11, right: 13, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                                                          suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)))
                                            ]



                                        ),

                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_subject".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))
                                                  ),
                                            SizedBox(height: 20),


                                                  CustomTextFormField(

                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .inputOneController,
                                                      margin: getMargin(top: 0),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineBlack90060,
                                                      prefix: Container(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 4,
                                                              right: 4,
                                                              bottom: 4),
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 8,
                                                              right: 10,
                                                              bottom: 8),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .blueGray90019,
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10))),
                                                          child: CustomImageView(
                                                              svgPath:
                                                              ImageConstant.imgsubj)
                                                      ),
                                                      prefixConstraints:
                                                          BoxConstraints(

                                                              maxHeight:
                                                                  getVerticalSize(36)),
                                                      suffix: Container(margin: getMargin(left: 30, top: 11, right: 13, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                                                      suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)),


                                                      )

                                                ])),

                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_room_no".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))),
                                            SizedBox(height: 20),

                                                  CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      controller: controller.inputTwoController,
                                                      margin: getMargin(top: 0),
                                                      variant:
                                                          TextFormFieldVariant
                                                              .OutlineBlack90060,
                                                      prefix: Container(
                                                          padding: getPadding(
                                                              left: 5,
                                                              top: 4,
                                                              right: 4,
                                                              bottom: 4),
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 8,
                                                              right: 10,
                                                              bottom: 8),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .blueGray90019,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10))),
                                                          child: CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgVector)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                                  getVerticalSize(36)),
                                                      suffix: Container(margin: getMargin(left: 30, top: 11, right: 13, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                                                      suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 20),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_department".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))),
                                            SizedBox(height: 20),

                                                  CustomTextFormField(


                                                      focusNode: FocusNode(),
                                                      controller: controller.inputThreeController,
                                                      margin: getMargin(top: 0),
                                                      variant: TextFormFieldVariant
                                                          .OutlineBlack90060,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      prefix: Container(
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 3,
                                                              right: 5,
                                                              bottom: 2),
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 8,
                                                              right: 10,
                                                              bottom: 8),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .blueGray90019,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10))),
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgLocation)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                                  getVerticalSize(36)),
                                                      suffix: Container(margin: getMargin(left: 30, top: 11, right: 13, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)),
                                                      suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36)),



                                                  )
                                                ])),

                                        Padding(
                                            padding:
                                                getPadding(left: 5, top: 33),
                                            child: Text("lbl_time".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterSemiBold14)),
                                        Padding(
                                            padding: getPadding(
                                                left: 5, top: 9, right: 5),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                            Container(padding: EdgeInsets.only(left: 20),
                                            child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Obx(
                                                      () => Text(
                                                    "${controller.selectedTime.value.hour}:${controller.selectedTime.value.minute}",
                                                    style: TextStyle(fontSize: 25),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.all(Color(0xFF7885FF))),
                                                    onPressed: () {
                                                    controller.chooseTime();
                                                  },
                                                  child: Text('Select Time'),
                                                )
                                              ],
                                            ),
                                        ),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 16, bottom: 16),
                                                      child: Text("lbl_to".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold14)),
                                                  Container(
                                                    padding: EdgeInsets.only(right: 20.0),
                                                    child: Column(mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                    children: [
                                                    Center(
                                                    child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Obx(
                                                            () => Text(
                                                          "${controller.selectedTime2.value.hour}:${controller.selectedTime2.value.minute}",
                                                          style: TextStyle(fontSize: 25),
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                        style: ButtonStyle(
                                                          backgroundColor: MaterialStateProperty.all(Color(0xFF7885FF))
                                                          , ),
                                                        onPressed: () {
                                                          controller.chooseTime2();
                                                        },
                                                        child: Text('Select Time'),

                                                      )
                                                    ],
                                                  ),
                              )]),
                                                      ),

                                                ])),


                                        CustomButton(
                                          height: getVerticalSize(36),
                                          text: "lbl_save".tr,
                                          margin: getMargin(left: 2, top: 35),

                                          onTap: controller.inputController.text.isEmpty
                                              ? navigateto
                                              : () => navigatetotemplate(context, controller.inputController.text.toString()),
                                        ),


                                        CustomButton(
                                            height: getVerticalSize(36),
                                            text: "Skip",
                                            margin: getMargin(
                                                left: 2, top: 15, bottom: 13),
                                            variant:
                                                ButtonVariant.OutlineIndigoA100,
                                            fontStyle: ButtonFontStyle
                                                .InterRegular12IndigoA100,
                                            onTap: onBackPressed)
                                      ]))))
                    ]))));
  }

  dynamic navigatetotemplate(BuildContext context, String classname) {

    Get.toNamed(AppRoutes.selectClassScreen,
      arguments: [controller
          .inputController.text.toString(),controller.inputOneController.text.toString(),
        controller.inputTwoController.text.toString(),
        controller.inputThreeController.text.toString(),]
    );
  }
  navigateto() {
    Get.toNamed(AppRoutes.mainScreen);
  }
  onBackPressed() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
