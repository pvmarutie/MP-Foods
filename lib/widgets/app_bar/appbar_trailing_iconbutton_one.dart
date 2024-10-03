import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_icon_button.dart';

class AppbarTrailingIconbuttonOne extends StatelessWidget {
  AppbarTrailingIconbuttonOne(
      {Key? key, this.imagePath, this.onTap, this.margin})
      : super(
          key: key,
        );

  final String? imagePath;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: CustomIconButton(
          height: 28.h,
          width: 28.h,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.outlineGrayTL24,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconlyCurvedNotification,
          ),
        ),
      ),
    );
  }
}
