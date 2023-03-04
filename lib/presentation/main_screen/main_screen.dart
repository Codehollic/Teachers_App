import '../main_screen/widgets/mainscreen_item_widget.dart';
import 'controller/main_controller.dart';
import 'models/mainscreen_item_model.dart';
import 'package:final_2/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:intl/intl.dart';
class MainScreen extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.indigoA100,
                      ColorConstant.indigo40001
                    ])),
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Container(
                                      padding: getPadding(
                                          left: 2, top: 9, right: 2, bottom: 9),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(right: 6),
                                                    shape: RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width:
                                                                getHorizontalSize(
                                                                    3)),
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder26),
                                                    child: Container(
                                                        height: getSize(52),
                                                        width: getSize(52),
                                                        padding: getPadding(
                                                            left: 6,
                                                            top: 5,
                                                            right: 6,
                                                            bottom: 5),
                                                        decoration: AppDecoration
                                                            .outline
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder26),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img1212011,
                                                              height:
                                                                  getVerticalSize(
                                                                      41),
                                                              width:
                                                                  getHorizontalSize(
                                                                      40),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              onTap: () {
                                                                navigatetoprofile();
                                                              })
                                                        ])))),
                                            Container(
                                                margin: getMargin(
                                                    left: 82,
                                                    top: 1,
                                                    right: 81),
                                                decoration: AppDecoration
                                                    .outlineBlack9003f,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  96),
                                                          width:
                                                              getHorizontalSize(
                                                                  193),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                  alignment: Alignment.topCenter,
                                                                  child: Text(
                                                                    "${DateTime.now().hour}:${DateTime.now().minute}",
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtSegoeUI44,
                                                                  ),
                                                                ),
                                                                Align(

                                                                  alignment: Alignment.bottomCenter,
                                                                  child: Text(

                                                                    "${DateTime.now().day} ${DateFormat.MMMM().format(DateTime.now())}",
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign: TextAlign.left,
                                                                    style: AppStyle.txtSegoeUI40,
                                                                  ),
                                                                )
                                                              ])),
                                                      Text(
                                                        DateFormat.EEEE().format(DateTime.now()),
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtSegoeUI25,
                                                      )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 27,
                                                    top: 19,
                                                    right: 28),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_now".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold17),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_08_30_10_00"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular15))
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    left: 14, right: 14),
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 27,
                                                    right: 20,
                                                    bottom: 27),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant.imgGroup7),
                                                        fit: BoxFit.cover)),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      3));
                                                        },
                                                        itemCount: controller.mainModelObj.value.mainscreenItemList.length,
                                                        itemBuilder: (context, index) {
                                                          MainscreenItemModel
                                                              model = controller.mainModelObj.value.mainscreenItemList[index];
                                                          return MainscreenItemWidget(
                                                              model);
                                                        }))),
                                            Container(
                                                height: getVerticalSize(412),
                                                width: getHorizontalSize(350),
                                                margin: getMargin(
                                                    top: 21, bottom: 53),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: GestureDetector(
                                                              onTap: () {
                                                                navigatetotodayschedule();
                                                              },
                                                              child: Container(
                                                                  margin: getMargin(right: 6),
                                                                  padding: getPadding(left: 84, top: 12, right: 84, bottom: 12),
                                                                  decoration: AppDecoration.fillIndigoA100.copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "msg_schedule_for_today"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular19))
                                                                  ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: GestureDetector(
                                                              onTap: () {
                                                                navigatetosetting();
                                                              },
                                                              child: Container(
                                                                  height: getVerticalSize(188),
                                                                  width: getHorizontalSize(165),
                                                                  margin: getMargin(bottom: 41),
                                                                  child: Stack(alignment: Alignment.bottomRight, children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: Container(
                                                                            padding: getPadding(left: 33, top: 30, right: 33, bottom: 30),
                                                                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup8), fit: BoxFit.cover)),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Padding(padding: getPadding(bottom: 73), child: Text("lbl_settings".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular21))
                                                                            ]))),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgSettingisocolor,
                                                                        height: getSize(
                                                                            121),
                                                                        width: getSize(
                                                                            121),
                                                                        alignment:
                                                                            Alignment.bottomRight)
                                                                  ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      181),
                                                              width:
                                                                  getHorizontalSize(
                                                                      166),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: GestureDetector(
                                                                            onTap: () {
                                                                              navigatetoeditschedule();
                                                                            },
                                                                            child: Container(
                                                                                decoration: AppDecoration.gradientDeeppurpleA10000WhiteA700b7.copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                  Container(
                                                                                      width: getHorizontalSize(140),
                                                                                      margin: getMargin(bottom: 1),
                                                                                      padding: getPadding(left: 19, top: 28, right: 19, bottom: 28),
                                                                                      decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup9), fit: BoxFit.cover)),
                                                                                      child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                        Padding(padding: getPadding(bottom: 75), child: Text("lbl_schedule".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular21))
                                                                                      ]))
                                                                                ])))),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgCalenderisocolor,
                                                                        height: getSize(
                                                                            121),
                                                                        width: getSize(
                                                                            121),
                                                                        alignment:
                                                                            Alignment.bottomRight)
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      186),
                                                              width:
                                                                  getHorizontalSize(
                                                                      162),
                                                              margin: getMargin(
                                                                  left: 21,
                                                                  bottom: 45),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: Container(
                                                                            decoration: AppDecoration.gradientLightblue40000WhiteA700ba.copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                              Container(
                                                                                  width: getHorizontalSize(140),
                                                                                  margin: getMargin(bottom: 1),
                                                                                  padding: getPadding(left: 2, top: 32, right: 2, bottom: 32),
                                                                                  decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup9), fit: BoxFit.cover)),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Padding(padding: getPadding(bottom: 67), child: Text("lbl_file_manager".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular21))
                                                                                  ]))
                                                                            ]))),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgNotebookisocolor,
                                                                        height: getSize(
                                                                            121),
                                                                        width: getSize(
                                                                            121),
                                                                        alignment:
                                                                            Alignment.bottomRight)
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      184),
                                                              width:
                                                                  getHorizontalSize(
                                                                      165),
                                                              margin: getMargin(
                                                                  left: 17),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: GestureDetector(
                                                                            onTap: () {
                                                                              navigatetoselectclass1();
                                                                            },
                                                                            child: Container(
                                                                                decoration: AppDecoration.gradientLightblue40000WhiteA700d1.copyWith(borderRadius: BorderRadiusStyle.circleBorder26),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Container(
                                                                                      padding: getPadding(left: 16, top: 30, right: 16, bottom: 30),
                                                                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup12), fit: BoxFit.cover)),
                                                                                      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                        Padding(padding: getPadding(bottom: 73), child: Text("lbl_attendance".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular21))
                                                                                      ]))
                                                                                ])))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        child: Container(
                                                                            height: getSize(121),
                                                                            width: getSize(121),
                                                                            child: Stack(alignment: Alignment.bottomRight, children: [
                                                                              CustomImageView(
                                                                                  imagePath: ImageConstant.imgCopyisocolor,
                                                                                  height: getSize(121),
                                                                                  width: getSize(121),
                                                                                  alignment: Alignment.center,
                                                                                  onTap: () {
                                                                                    navigatetoselectclass1();
                                                                                  }),
                                                                              CustomImageView(imagePath: ImageConstant.imgPencilisocolor, height: getSize(26), width: getSize(26), alignment: Alignment.bottomRight, margin: getMargin(right: 21, bottom: 27))
                                                                            ]))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgGroup9,
                                                                        height: getVerticalSize(
                                                                            158),
                                                                        width: getHorizontalSize(
                                                                            140),
                                                                        alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                        onTap:
                                                                            () {
                                                                              navigatetoselectclass();
                                                                        })
                                                                  ])))
                                                    ]))
                                          ]))))
                        ])))));
  }

  navigatetoprofile() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  navigatetotodayschedule() {
    Get.toNamed(AppRoutes.scheduleForTodayScreen);
  }

  navigatetosetting() {
    Get.toNamed(AppRoutes.settingScreen);
  }

  navigatetoeditschedule() {
    Get.toNamed(AppRoutes.editScheduleScreen);
  }

  navigatetoselectclass() {
    Get.toNamed(AppRoutes.selectClassScreen);
  }

  navigatetoselectclass1() {
    Get.toNamed(AppRoutes.selectClassScreen);
  }

  toAttendence() {
    Get.toNamed(AppRoutes.attendanceScreen);
  }
}
