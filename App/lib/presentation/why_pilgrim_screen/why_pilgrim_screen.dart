import '../drawer_draweritem/controller/drawer_controller.dart';
import '../drawer_draweritem/drawer_draweritem.dart';
import 'controller/why_pilgrim_controller.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:Pilgrim/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WhyPilgrimScreen extends GetWidget<WhyPilgrimController> {
  WhyPilgrimScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 14.v),
                  Container(
                      width: 360.h,
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      padding: EdgeInsets.all(18.h),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_the_challenge".tr,
                                    textAlign: TextAlign.justify,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 5.v),
                            Container(
                                width: 292.h,
                                margin: EdgeInsets.only(right: 31.h),
                                child: Text("msg_mental_health_issues".tr,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 2.v),
                            Text("lbl_stigma_dilemma".tr,
                                style: CustomTextStyles
                                    .bodyLargeAleoDeeppurpleA20001),
                            SizedBox(height: 2.v),
                            Container(
                                width: 283.h,
                                margin:
                                    EdgeInsets.only(left: 13.h, right: 27.h),
                                child: Text("msg_societal_misconceptions".tr,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 2.v),
                            Text("msg_accessibility_concerns".tr,
                                style:
                                    CustomTextStyles.bodyLargeDeeppurpleA20001),
                            SizedBox(height: 2.v),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: 291.h,
                                    margin: EdgeInsets.only(
                                        left: 13.h, right: 19.h),
                                    child: Text("msg_limited_availability".tr,
                                        overflow: TextOverflow.visible,
                                        style: theme.textTheme.bodyLarge))),
                            SizedBox(height: 14.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_the_solution".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 5.v),
                            Text("msg_anonymous_personalized".tr,
                                style: CustomTextStyles
                                    .bodyLargeAleoDeeppurpleA20001),
                            SizedBox(height: 2.v),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: 291.h,
                                    margin: EdgeInsets.only(
                                        left: 13.h, right: 19.h),
                                    child: Text("msg_offers_confidential".tr,
                                        overflow: TextOverflow.visible,
                                        style: theme.textTheme.bodyLarge))),
                            SizedBox(height: 2.v),
                            Text("msg_24_7_availability".tr,
                                style: CustomTextStyles
                                    .bodyLargeAleoDeeppurpleA20001),
                            SizedBox(height: 2.v),
                            Container(
                                width: 257.h,
                                margin:
                                    EdgeInsets.only(left: 13.h, right: 53.h),
                                child: Text("msg_breaks_down_geographical".tr,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 2.v),
                            Text("msg_digital_ecosystem".tr,
                                style: CustomTextStyles
                                    .bodyLargeAleoDeeppurpleA20001),
                            SizedBox(height: 2.v),
                            Container(
                                width: 278.h,
                                margin:
                                    EdgeInsets.only(left: 12.h, right: 31.h),
                                child: Text("msg_integrates_with".tr,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 14.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_the_impact".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 5.v),
                            Text("msg_democratizes_mental".tr,
                                style: CustomTextStyles
                                    .bodyLargeAleoDeeppurpleA20001),
                            SizedBox(height: 2.v),
                            Container(
                                width: 248.h,
                                margin:
                                    EdgeInsets.only(left: 13.h, right: 62.h),
                                child: Text("msg_makes_it_accessible".tr,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 2.v),
                            Text("msg_scalable_inclusive".tr,
                                style: CustomTextStyles
                                    .bodyLargeAleoDeeppurpleA20001),
                            SizedBox(height: 2.v),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: 290.h,
                                    margin: EdgeInsets.only(
                                        left: 13.h, right: 21.h),
                                    child: Text("msg_offers_a_comprehensive".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.visible,
                                        style: theme.textTheme.bodyLarge))),
                            SizedBox(height: 14.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_join_us".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 5.v),
                            Container(
                                width: 292.h,
                                margin: EdgeInsets.only(right: 31.h),
                                child: Text("msg_be_part_of_redefining".tr,
                                    overflow: TextOverflow.visible,
                                    style: theme.textTheme.bodyLarge))
                          ]
                      )
                    ),
                      SizedBox(height: 14.v)
                    ]
                    )
                )
            )
        )
    )
    ;
  }

  /// Section Widget
  Widget _buildTopBar() {
    return SizedBox(
        height: 150.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAbout1,
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
                            child: Text("msg_can_technology_heal".tr,
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall!
                                    .copyWith(height: 1.04))))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFourteen() {
    return SizedBox(
        height: 96.v,
        width: 317.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  width: 317.h,
                  child: Text("msg_be_part_of_redefining".tr,
                      maxLines: null,
                      overflow: TextOverflow.visible,
                      style: theme.textTheme.bodyLarge))),
          Align(
              alignment: Alignment.topCenter,
              child: Text("lbl_join_us".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge))
        ]));
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  drawernav() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
