import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/autolayout_six_item_model.dart';

// ignore_for_file: must_be_immutable
class AutolayoutSixItemWidget extends StatelessWidget {
  AutolayoutSixItemWidget(this.autolayoutSixItemModelObj, {Key? key})
      : super(
          key: key,
        );

  AutolayoutSixItemModel autolayoutSixItemModelObj;

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
            imagePath: autolayoutSixItemModelObj.vegetarian!,
            height: 120.h,
            width: 120.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  autolayoutSixItemModelObj.loremipsumdol!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        autolayoutSixItemModelObj.distance!,
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          autolayoutSixItemModelObj.tf!,
                          style: theme.textTheme.titleSmall,
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
                          autolayoutSixItemModelObj.zero!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          autolayoutSixItemModelObj.zeroOne!,
                          style: theme.textTheme.titleSmall,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 4.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconDelivery,
                        height: 20.h,
                        width: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          autolayoutSixItemModelObj.price!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: autolayoutSixItemModelObj.imageOne!,
                        height: 24.h,
                        width: 24.h,
                      )
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
}
