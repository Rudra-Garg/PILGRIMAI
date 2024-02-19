import 'controller/drawer_controller.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:Pilgrim/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DrawerDraweritem extends StatelessWidget {
  DrawerDraweritem(this.controller, {Key? key}) : super(key: key);

  DrawerController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: 255.h,
            padding: EdgeInsets.symmetric(vertical: 24.v),
            decoration: AppDecoration.fillWhiteA,
            child: Column(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLogo1,
                  height: 150.v,
                  width: 255.h,
                  onTap: () {
                    onTapImgLOGOOne();
                  }),
              SizedBox(height: 18.v),
              _buildWhySection(
                  image: ImageConstant.imgAbout1131x223,
                  text: "lbl_talk_to_pilgrim".tr,
                  onTapImage: () {
                    onTapImage();
                  }),
              SizedBox(height: 18.v),
              _buildWhySection(
                  image: ImageConstant.imgAbout2,
                  text: "lbl_why_pilgrim".tr,
                  onTapImage: () {
                    onTapImage1();
                  }),
              SizedBox(height: 18.v),
              _buildWhySection(
                  image: ImageConstant.imgAbout3,
                  text: "lbl_about_us".tr,
                  onTapImage: () {
                    onTapImage2();
                  }),
              SizedBox(height: 18.v),
              _buildHelpSection(onTapImage: () {
                onTapImage3();
              }),
              SizedBox(height: 35.v)
            ])));
  }

  Widget _buildHelpSection({Function()? onTapImage}) {
    return SizedBox(
      height: 131.v,
      width: 223.h,
      child: GestureDetector(
        onTap: onTapImage,
        child: Container(
          decoration: AppDecoration.gradientIndigoAToLightblue300
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 150.h,
              child: Text(
                "lbl_wip".tr,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineLarge!
                    .copyWith(color: appTheme.whiteA700),
              ),
            ),
          ),
        ),
      ),
    );
  }


  /// Common widget
  Widget _buildWhySection({
    required String image,
    required String text,
    Function()? onTapImage,
  }) {
    return GestureDetector(
      onTap: onTapImage,
      child: SizedBox(
        height: 131.v,
        width: 223.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: image,
              height: 131.v,
              width: 223.h,
              radius: BorderRadius.circular(12.h),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 150.h,
                child: Text(
                  text,
                  maxLines: 3,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(color: appTheme.whiteA700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  /// Navigates to the homePageScreen when the action is triggered.
  onTapImgLOGOOne() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the thePilgrimScreen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.thePilgrimScreen,
    );
  }

  /// Navigates to the whyPilgrimScreen when the action is triggered.
  onTapImage1() {
    Get.toNamed(
      AppRoutes.whyPilgrimScreen,
    );
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapImage2() {
    Get.toNamed(
      AppRoutes.aboutUsScreen,
    );
  }

  onTapImage3() {
    Get.toNamed(
      AppRoutes.helpResourcesScreen,
    );
  }
}
