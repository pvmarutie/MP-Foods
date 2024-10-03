import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/gridhamburone_item_model.dart';

// ignore_for_file: must_be_immutable
class GridhamburoneItemWidget extends StatelessWidget {
  GridhamburoneItemWidget(this.gridhamburoneItemModelObj, {Key? key})
      : super(
          key: key,
        );

  GridhamburoneItemModel gridhamburoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: gridhamburoneItemModelObj.hamburone!,
          height: 58.h,
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 10.h),
        ),
        SizedBox(height: 12.h),
        Text(
          gridhamburoneItemModelObj.burger!,
          style: CustomTextStyles.titleMedium16,
        )
      ],
    );
  }
}
