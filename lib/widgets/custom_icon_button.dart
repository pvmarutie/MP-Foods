import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayTL24 => BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200.withOpacity(0.08),
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.08),
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange50014,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA700.withOpacity(0.08),
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get gradientRedAToPinkA => BoxDecoration(
        borderRadius: BorderRadius.circular(36.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [appTheme.redA20001, appTheme.pinkA100],
        ),
      );
  static BoxDecoration get gradientPrimaryToGreenTL36 => BoxDecoration(
        borderRadius: BorderRadius.circular(36.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(0.0, 0),
          colors: [theme.colorScheme.primary, appTheme.green400],
        ),
      );
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(18.h),
                gradient: LinearGradient(
                  begin: Alignment(1.0, 1),
                  end: Alignment(0.0, 0),
                  colors: [theme.colorScheme.primary, appTheme.green400],
                ),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
