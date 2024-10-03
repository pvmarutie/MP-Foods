import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/notificationlist_item_model.dart';

// ignore_for_file: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  NotificationlistItemWidget(this.notificationlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  NotificationlistItemModel notificationlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 60.h,
                        width: 60.h,
                        padding: EdgeInsets.all(16.h),
                        decoration: IconButtonStyleHelper.fillRedA,
                        child: CustomImageView(
                          imagePath:
                              notificationlistItemModelObj.autolayoutOne!,
                        ),
                      ),
                      SizedBox(width: 16.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notificationlistItemModelObj.orders!,
                              style: theme.textTheme.titleLarge,
                            ),
                            SizedBox(height: 6.h),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                children: [
                                  Text(
                                    notificationlistItemModelObj.dec2022!,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      notificationlistItemModelObj.tf!,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      notificationlistItemModelObj.time!,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                CustomElevatedButton(
                  height: 24.h,
                  width: 40.h,
                  text: "lbl_new".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL6,
                  buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            notificationlistItemModelObj.description!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumGray800.copyWith(
              height: 1.40,
            ),
          )
        ],
      ),
    );
  }
}
