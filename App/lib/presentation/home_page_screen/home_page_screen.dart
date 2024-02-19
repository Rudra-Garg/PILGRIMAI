import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:Pilgrim/core/app_export.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLogo1,
                      height: 225.v,
                      width: 393.h),
                  SizedBox(height: 46.v),
                  Container(
                      margin: EdgeInsets.only(left: 20.h, right: 20.h),
                      child: Text("msg_in_the_silent_whispers".tr,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyLargeIndigoA700)),
                  SizedBox(height: 29.v),
                  _buildHomePageRow(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildHomePageRow() {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 25.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 335.v,
              width: 165.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                        height: 165.v,
                        width: 165.h,
                        child: Stack(alignment: Alignment.topRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    about();
                                  },
                                  child: Container(
                                      height: 165.adaptSize,
                                      width: 165.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 29.h, vertical: 42.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.imgGroup2),
                                              fit: BoxFit.cover)),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgAboutIcon,
                                          height: 59.v,
                                          width: 49.h,
                                          alignment: Alignment.centerRight,
                                          onTap: () {
                                            about();
                                          })))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  margin: EdgeInsets.only(right: 10.h, bottom: 5.v, top: 5.v),
                                  child: Text("lbl_about_us".tr,
                                      maxLines: 1,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.right,
                                      style: CustomTextStyles
                                          .titleLargeBalooPaaji2WhiteA700)))
                        ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: 165.v,
                        width: 165.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    chat();
                                  },
                                  child: Container(
                                      height: 165.adaptSize,
                                      width: 165.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.h, vertical: 41.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.imgGroup4),
                                              fit: BoxFit.cover)),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgChatIcon,
                                          height: 59.v,
                                          width: 68.h,
                                          alignment: Alignment.centerRight,
                                          onTap: () {
                                            chat();
                                          })))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  margin: EdgeInsets.only(right: 10.h, bottom: 5.v, top: 5.v),
                                  child: Text("lbl_talk_to_pilgrim".tr,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.right,
                                      style: CustomTextStyles
                                          .titleLargeBalooPaaji2WhiteA700)))
                        ])))
              ])),
          Container(
              height: 335.v,
              width: 165.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.bottomCenter,

                    child: SizedBox(
                        height: 165.v,
                        width: 165.h,
                        child: Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  help();
                                },
                                child: Container(
                                  height: 165.adaptSize,
                                  width: 165.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 22.h, vertical: 37.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup1),
                                          fit: BoxFit.cover)),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgWipIcon,
                                      height: 69.adaptSize,
                                      width: 69.adaptSize,
                                      alignment: Alignment.centerLeft,
                                      onTap: () {
                                        help();
                                      })))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  margin: EdgeInsets.only(left: 10.h, bottom: 5.v, top: 5.v),
                                  child: Text("lbl_wip".tr,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeBalooPaaji2WhiteA700)))
                        ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: 165.v,
                        width: 165.h,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    why();
                                  },
                                  child: Container(
                                      height: 165.adaptSize,
                                      width: 165.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 39.h, vertical: 33.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ImageConstant.imgGroup3),
                                              fit: BoxFit.cover)),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgWhyIcon,
                                          height: 66.v,
                                          width: 35.h,
                                          alignment: Alignment.centerLeft,
                                          onTap: () {
                                            why();
                                          })))),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  margin: EdgeInsets.only(left: 10.h, bottom: 5.v, top: 5.v),
                                  child: Text("lbl_why_pilgrim".tr,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeBalooPaaji2WhiteA700)))
                        ])))
              ]))
        ]));
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  about() {
    Get.toNamed(
      AppRoutes.aboutUsScreen,
    );
  }

  /// Navigates to the thePilgrimScreen when the action is triggered.
  chat() {
    Get.toNamed(
      AppRoutes.thePilgrimScreen,
    );
  }

  /// Navigates to the whyPilgrimScreen when the action is triggered.
  why() {
    Get.toNamed(
      AppRoutes.whyPilgrimScreen,
    );
  }

  help(){
    Get.toNamed(
      AppRoutes.helpResourcesScreen,
    );
  }
}
