import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.2),
      );
// Gradient decorations
  static BoxDecoration get gradientBlueAToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [appTheme.blueA700, appTheme.blueA200],
        ),
      );
  static BoxDecoration get gradientOrangeAToOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [appTheme.orangeA400, appTheme.orangeA200],
        ),
      );
  static BoxDecoration get gradientPrimaryToGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [theme.colorScheme.primary, appTheme.green400],
        ),
      );
  static BoxDecoration get gradientRedAToPinkA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [appTheme.redA20001, appTheme.pinkA100],
        ),
      );
// Gradients decorations
  static BoxDecoration get gradientsGradientGreen => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
// Greyscale decorations
  static BoxDecoration get greyscale100 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get greyscale100OthersWhite => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get greyscale300 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
// Others decorations
  static BoxDecoration get othersWhite => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get othersWhiteCardShadow2 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
// Outline decorations
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA700,
          width: 3.h,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
// Primary decorations
  static BoxDecoration get primary100 => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get primary500 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.3),
      );
// Transparent decorations
  static BoxDecoration get transparentGreen => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.08),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder122 => BorderRadius.circular(
        122.h,
      );
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder174 => BorderRadius.circular(
        174.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder72 => BorderRadius.circular(
        72.h,
      );
  static BorderRadius get circleBorder80 => BorderRadius.circular(
        80.h,
      );
// Custom borders
  static BorderRadius get customBorderTL48 => BorderRadius.vertical(
        top: Radius.circular(48.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get roundedBorder36 => BorderRadius.circular(
        36.h,
      );
}
