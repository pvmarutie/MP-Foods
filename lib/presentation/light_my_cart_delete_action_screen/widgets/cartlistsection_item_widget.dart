import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/cartlistsection_item_model.dart';

// ignore_for_file: must_be_immutable
class CartlistsectionItemWidget extends StatelessWidget {
  CartlistsectionItemWidget(this.cartlistsectionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CartlistsectionItemModel cartlistsectionItemModelObj;

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
          SizedBox(
            height: 120.h,
            width: 166.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: cartlistsectionItemModelObj.image!,
                  height: 120.h,
                  width: 120.h,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  height: 120.h,
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: cartlistsectionItemModelObj.imageOne!,
                        height: 120.h,
                        width: 120.h,
                        radius: BorderRadius.circular(
                          24.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      CustomImageView(
                        imagePath: cartlistsectionItemModelObj.imageTwo!,
                        height: 120.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(
                          24.h,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartlistsectionItemModelObj.loremipsumdol!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        cartlistsectionItemModelObj.itemsCounter!,
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          cartlistsectionItemModelObj.tf!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          cartlistsectionItemModelObj.distance!,
                          style: theme.textTheme.titleSmall,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  cartlistsectionItemModelObj.price!,
                  style: CustomTextStyles.titleLargePrimary,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
