import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/autolayout_four_item_model.dart';

// ignore_for_file: must_be_immutable
class AutolayoutFourItemWidget extends StatelessWidget {
  AutolayoutFourItemWidget(this.autolayoutFourItemModelObj, {Key? key})
      : super(
          key: key,
        );

  AutolayoutFourItemModel autolayoutFourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.h,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 192.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: autolayoutFourItemModelObj.mixedSalad!,
                  height: 192.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
                CustomElevatedButton(
                  height: 24.h,
                  width: 56.h,
                  text: "lbl_promo".tr,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 12.h,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
                  alignment: Alignment.topLeft,
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            autolayoutFourItemModelObj.loremipsumdol!,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  autolayoutFourItemModelObj.distance!,
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    autolayoutFourItemModelObj.tf!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyBoldStar,
                  height: 14.h,
                  width: 14.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 6.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    autolayoutFourItemModelObj.zero!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    autolayoutFourItemModelObj.zeroOne!,
                    style: theme.textTheme.labelLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  autolayoutFourItemModelObj.price!,
                  style: CustomTextStyles.titleLargePrimary,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    autolayoutFourItemModelObj.one!,
                    style: CustomTextStyles.labelMediumGray700,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconDelivery,
                  height: 20.h,
                  width: 20.h,
                  margin: EdgeInsets.only(left: 8.h),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 2.h,
                    ),
                    child: Text(
                      autolayoutFourItemModelObj.priceOne!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyLightOutlineHeart,
                  height: 24.h,
                  width: 24.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
