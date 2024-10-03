import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get luckiestGuy {
    return copyWith(
      fontFamily: 'Luckiest Guy',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeUrbanistGray600 =>
      theme.textTheme.bodyLarge!.urbanist.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static TextStyle get bodyMediumGray400 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static TextStyle get bodyMediumGray800 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
// Label text style
  static TextStyle get labelLargePrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumGray700 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
      );
  static TextStyle get labelMediumPrimary =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumPrimarySemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumRedA200 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumWhiteA700 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static TextStyle get titleLargePrimary =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumGray500 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumGray600 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumGray700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumGray800 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumGray800Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumGray800Medium16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumPrimary16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumPrimary_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleMediumPrimary_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleMediumSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumSemiBold16 =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumWhiteA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static TextStyle get titleSmallGray800 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static TextStyle get titleSmallOnPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallOnPrimary_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallWhiteA700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
}
