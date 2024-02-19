import '../drawer_draweritem/controller/drawer_controller.dart';
import '../drawer_draweritem/drawer_draweritem.dart';
import 'controller/about_us_controller.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:Pilgrim/core/app_export.dart';
import 'package:Pilgrim/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class AboutUsScreen extends GetWidget<AboutUsController> {
  AboutUsScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            drawer: DrawerDraweritem(DrawerController()),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildTopBar(),
                  SizedBox(height: 10.v),
                  Text("lbl_our_vision".tr, style: theme.textTheme.titleLarge),
                  SizedBox(height: 5.v),
                  Container(
                      width: 351.h,
                      margin: EdgeInsets.only(left: 20.h, right: 20.h),
                      child: Text("msg_imagine_a_world".tr,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.justify,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.13))),
                  SizedBox(height: 16.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 15.v),
                      decoration: AppDecoration.gradientIndigoAToAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 19.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgPic1,
                            height: 150.adaptSize,
                            width: 150.adaptSize,
                            radius: BorderRadius.circular(75.h)),
                        SizedBox(height: 19.v),
                        Text("lbl_rudra_garg".tr,
                            style: CustomTextStyles.bodyLargeRegularWhite),
                        SizedBox(height: 14.v),
                        SizedBox(
                            width: 330.h,
                            child: Text("msg_as_a_co_founder".tr,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.13))),
                        SizedBox(height: 19.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgPic2,
                            height: 150.adaptSize,
                            width: 150.adaptSize,
                            radius: BorderRadius.circular(75.h)),
                        SizedBox(height: 19.v),
                        Text("msg_shaurya_mani_tripathi".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyLargeRegularWhite),
                        SizedBox(height: 14.v),
                        SizedBox(
                            width: 330.h,
                            child: Text("msg_more_than_just_a".tr,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.justify,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.13)))
                      ])),
                      SizedBox(height: 16.v,)
                ])))));
  }

  /// Section Widget
  Widget _buildTopBar() {
    return SizedBox(
        height: 150.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAbout11,
              height: 150.v,
              width: 393.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 85.v,
                  width: 355.h,
                  margin: EdgeInsets.only(bottom: 20.v),
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgDrawerIcon,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        alignment: Alignment.bottomLeft,
                        onTap: () {
                          drawernav();
                        }),
                    Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                            width: 339.h,
                            child: Text("msg_the_dynamic_duo".tr,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineMedium!
                                    .copyWith(height: 1.04))))
                  ])))
        ]));
  }

  drawernav() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
