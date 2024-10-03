import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/speciallist_item_model.dart';

// ignore_for_file: must_be_immutable
class SpeciallistItemWidget extends StatelessWidget {
  SpeciallistItemWidget(this.speciallistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SpeciallistItemModel speciallistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadiusStyle.roundedBorder28,
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
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: speciallistItemModelObj.specialBound!,
            height: 100.h,
            width: 100.h,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildNew(context),
                SizedBox(height: 8.h),
                Text(
                  speciallistItemModelObj.loremipsum!,
                  style: CustomTextStyles.titleMedium_1,
                ),
                SizedBox(height: 8.h),
                Text(
                  speciallistItemModelObj.price!,
                  style: CustomTextStyles.titleMediumPrimary_2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNew(BuildContext context) {
    return CustomElevatedButton(
      height: 24.h,
      width: 42.h,
      text: "lbl_new2".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL6,
      buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
    );
  }
}
