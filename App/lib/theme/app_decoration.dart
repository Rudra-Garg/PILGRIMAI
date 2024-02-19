import 'package:flutter/material.dart';
import 'package:Pilgrim/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );

  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );

  static BoxDecoration get gradientIndigoToPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0),
          end: Alignment(0, 1),
          colors: [
            appTheme.indigoA200,
            appTheme.purple,
          ],
        ),
      );

  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientIndigoAToAmber => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0),
          end: Alignment(0, 1),
          colors: [
            appTheme.indigoA200,
            appTheme.teal200,
            appTheme.amber300,
          ],
        ),
      );

  static BoxDecoration get gradientIndigoAToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.indigoA700,
            appTheme.lightBlue300,
          ],
        ),
      );

  static BoxDecoration get gradientIndigoAToLightblue300 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.indigoA700,
            appTheme.lightBlue300,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder75 => BorderRadius.circular(
        75.h,
      );

  // Custom borders
  static BorderRadius get botMessageRadius => BorderRadius.only(
        topLeft: Radius.circular(19.h),
        topRight: Radius.circular(19.h),
        bottomRight: Radius.circular(19.h),
      );

  static BorderRadius get userMessageRadius => BorderRadius.only(
        topLeft: Radius.circular(19.h),
        topRight: Radius.circular(19.h),
        bottomLeft: Radius.circular(19.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
