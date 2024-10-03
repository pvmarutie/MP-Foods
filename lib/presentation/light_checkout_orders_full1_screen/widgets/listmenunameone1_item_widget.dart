import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/listmenunameone1_item_model.dart';

// ignore_for_file: must_be_immutable
class Listmenunameone1ItemWidget extends StatelessWidget {
  Listmenunameone1ItemWidget(this.listmenunameone1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Listmenunameone1ItemModel listmenunameone1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: listmenunameone1ItemModelObj.image!,
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
                  listmenunameone1ItemModelObj.menunameone!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 12.h),
                Text(
                  listmenunameone1ItemModelObj.price!,
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
