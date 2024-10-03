import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/orderslist_item_model.dart';

// ignore_for_file: must_be_immutable
class OrderslistItemWidget extends StatelessWidget {
  OrderslistItemWidget(this.orderslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  OrderslistItemModel orderslistItemModelObj;

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
            imagePath: orderslistItemModelObj.biteMe!,
            height: 120.h,
            width: 120.h,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderslistItemModelObj.restaurantname!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        orderslistItemModelObj.itemsCounter!,
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          orderslistItemModelObj.tf!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          orderslistItemModelObj.distance!,
                          style: theme.textTheme.titleSmall,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        orderslistItemModelObj.price!,
                        style: CustomTextStyles.titleLargePrimary,
                      ),
                      _buildCancelledButton(context)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelledButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 24.h,
      width: 66.h,
      text: "lbl_cancelled".tr,
      margin: EdgeInsets.only(left: 12.h),
      buttonStyle: CustomButtonStyles.outlineRedA,
      buttonTextStyle: CustomTextStyles.labelMediumRedA200,
    );
  }
}
