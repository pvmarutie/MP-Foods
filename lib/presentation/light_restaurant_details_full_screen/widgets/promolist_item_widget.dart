import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../models/promolist_item_model.dart';

// ignore_for_file: must_be_immutable
class PromolistItemWidget extends StatelessWidget {
  PromolistItemWidget(this.promolistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  PromolistItemModel promolistItemModelObj;

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
            imagePath: promolistItemModelObj.image!,
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
                _buildPromoTag(context),
                SizedBox(height: 8.h),
                Text(
                  promolistItemModelObj.xloremipsum!,
                  style: CustomTextStyles.titleMediumPrimary_2,
                ),
                SizedBox(height: 8.h),
                Text(
                  promolistItemModelObj.price!,
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
  Widget _buildPromoTag(BuildContext context) {
    return CustomElevatedButton(
      height: 24.h,
      width: 56.h,
      text: "lbl_promo".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL6,
      buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
    );
  }
}
