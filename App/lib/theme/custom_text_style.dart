import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAleoDeeppurpleA20001 =>
      theme.textTheme.bodyLarge!.aleo.copyWith(
        color: appTheme.deepPurpleA20001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );

  static get bodyLargeDeeppurpleA20001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepPurpleA20001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );

  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w400,
      );

  static get bodyLargeIndigoA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w400,
      );

  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );

  static get bodyLargeRegularWhite => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );

  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );

  static get bodyMediumRubikBlueA200 =>
      theme.textTheme.bodyMedium!.rubik.copyWith(
        color: appTheme.blueA200,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );

  static get bodySmallRubikBlack900 =>
      theme.textTheme.bodySmall!.rubik.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );

  static get bodySmallRubikBlack900Light =>
      theme.textTheme.bodySmall!.rubik.copyWith(
        color: appTheme.black900.withOpacity(0.65),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );

  // Title text style
  static get titleLargeBalooPaaji2WhiteA700 =>
      theme.textTheme.titleLarge!.balooPaaji2.copyWith(
        color: appTheme.whiteA700,
        fontSize: 20.fSize,
      );

  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );

  static get titleLargeRubikDeeppurpleA20001 =>
      theme.textTheme.titleLarge!.rubik.copyWith(
        color: appTheme.deepPurpleA20001,
        fontSize: 20.fSize,
      );
}

extension on TextStyle {
  TextStyle get balooPaaji2 {
    return copyWith(
      fontFamily: 'Baloo Paaji 2',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get aleo {
    return copyWith(
      fontFamily: 'Aleo',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }
}
