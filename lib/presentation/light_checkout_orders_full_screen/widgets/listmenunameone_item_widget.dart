import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/listmenunameone_item_model.dart';

// ignore_for_file: must_be_immutable
class ListmenunameoneItemWidget extends StatelessWidget {
  ListmenunameoneItemWidget(this.listmenunameoneItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListmenunameoneItemModel listmenunameoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: listmenunameoneItemModelObj.image!,
          height: 80.h,
          width: 80.h,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listmenunameoneItemModelObj.menunameone!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 12.h),
                Text(
                  listmenunameoneItemModelObj.price!,
                  style: CustomTextStyles.titleMediumPrimary_1,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildQuantityButton(context),
              SizedBox(height: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 20.h,
                width: 20.h,
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildQuantityButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 32.h,
      text: "lbl_1x".tr,
      buttonTextStyle: CustomTextStyles.labelLargePrimary,
    );
  }
}
