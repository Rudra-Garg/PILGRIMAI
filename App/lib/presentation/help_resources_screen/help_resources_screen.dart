import 'package:Pilgrim/presentation/help_resources_screen/widgets/help_resources_widget.dart';
import '../drawer_draweritem/controller/drawer_controller.dart';
import '../drawer_draweritem/drawer_draweritem.dart';
import 'controller/help_resources_controller.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:Pilgrim/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HelpResourcesScreen extends GetWidget<HelpResourcesController> {
  HelpResourcesScreen({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerDraweritem(DrawerController()),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildTopBar(),
                SizedBox(height: 17.v),
                Text(
                  "msg_feeling_overwhelmed".tr,
                  style: CustomTextStyles.titleLarge20,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15.h,
                      right: 15.h,
                    ),
                    child: Text(
                      "msg_this_app_offers".tr,
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.visible,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        height: 1.13,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                _buildHelpResources(),
                SizedBox(height: 22.v),
                Container(
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                  ),
                  child: Text(
                    "msg_disclaimer_the".tr,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.justify,
                    style: CustomTextStyles.bodySmallRubikBlack900.copyWith(
                      height: 1.64,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  width: 365.h,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                  ),
                  padding: EdgeInsets.only( bottom: 10.v),
                  child: Text(
                    "msg_remember_support".tr,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.justify,
                    style: CustomTextStyles.bodyMediumRubikBlueA200.copyWith(
                      height: 1.20,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBar() {
    return Container(
      height: 150.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.gradientIndigoAToLightBlue,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 340.h,
              margin: EdgeInsets.only(top: 15.v),
              child: Text(
                "msg_get_help_now_national".tr,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineMedium!.copyWith(
                  height: 1.21,
                ),
              ),
            ),
          ),
          CustomImageView(
              imagePath: ImageConstant.imgDrawerIcon,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.bottomLeft,
              onTap: () {
                drawernav();
              })
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelpResources() {
    return Column(
      children: [
        Text(
          "msg_national_helplines".tr,
          style: CustomTextStyles.titleLargeRubikDeeppurpleA20001,
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 135.v,
          child: GetX<HelpResourcesController>(
            builder: (controller) => ListView.builder(
              itemCount: controller.cardHelplineList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CardWidget(
                cardData: controller.cardHelplineList[index],
              ),
            ),
          ),
        ),

        SizedBox(height: 23.v),
        Text(
          "msg_mental_health_resources".tr,
          textAlign: TextAlign.center,
          style: CustomTextStyles.titleLargeRubikDeeppurpleA20001,
        ),
        SizedBox(height: 15.v),
        SizedBox(
          height: 135.v,
          child: GetX<HelpResourcesController>(
            builder: (controller) => ListView.builder(
              itemCount: controller.cardResourcesList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CardWidget(
                cardData: controller.cardResourcesList[index],
              ),
            ),
          ),
        ),
      ],
    );
  }

  drawernav() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
