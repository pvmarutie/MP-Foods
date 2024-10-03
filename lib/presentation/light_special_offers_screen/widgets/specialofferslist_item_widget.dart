import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/specialofferslist_item_model.dart';

// ignore_for_file: must_be_immutable
class SpecialofferslistItemWidget extends StatelessWidget {
  SpecialofferslistItemWidget(this.specialofferslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SpecialofferslistItemModel specialofferslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder36,
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(0, 0),
          colors: [theme.colorScheme.primary, appTheme.green400],
        ),
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup218,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 164.h,
            margin: EdgeInsets.only(bottom: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  specialofferslistItemModelObj.thirty!,
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(
                  width: 142.h,
                  child: Text(
                    specialofferslistItemModelObj.discountonly!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.56,
                    ),
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: specialofferslistItemModelObj.image!,
            height: 168.h,
            width: 182.h,
            margin: EdgeInsets.only(top: 12.h),
          )
        ],
      ),
    );
  }
}
