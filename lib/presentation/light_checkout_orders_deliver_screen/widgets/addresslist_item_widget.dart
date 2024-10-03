import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_radio_button.dart';
import '../models/addresslist_item_model.dart';

// ignore_for_file: must_be_immutable
class AddresslistItemWidget extends StatelessWidget {
  AddresslistItemWidget(this.addresslistItemModelObj,
      {Key? key, this.onTapRadioGroup})
      : super(
          key: key,
        );

  AddresslistItemModel addresslistItemModelObj;

  Function(String)? onTapRadioGroup;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadiusStyle.roundedBorder24,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 52.h,
                  width: 52.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.08),
                    borderRadius: BorderRadiusStyle.roundedBorder28,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomIconButton(
                        height: 36.h,
                        width: 36.h,
                        padding: EdgeInsets.all(8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Text(
                              addresslistItemModelObj.location!,
                              style: theme.textTheme.titleMedium,
                            ),
                            CustomElevatedButton(
                              height: 24.h,
                              width: 54.h,
                              text: "lbl_default".tr,
                              margin: EdgeInsets.only(left: 8.h),
                              buttonStyle: CustomButtonStyles.fillPrimaryTL61,
                              buttonTextStyle:
                                  CustomTextStyles.labelMediumPrimarySemiBold,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        addresslistItemModelObj.detailsaddress!,
                        style: theme.textTheme.titleSmall,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          CustomRadioButton(
            value: "" ?? "",
            groupValue: addresslistItemModelObj.radioGroup!,
            onChange: (value) {
              onTapRadioGroup?.call(value);
            },
          )
        ],
      ),
    );
  }
}
