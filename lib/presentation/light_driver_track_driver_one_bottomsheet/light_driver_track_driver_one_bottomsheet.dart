import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/light_driver_track_driver_one_bloc.dart';
import 'models/light_driver_track_driver_one_model.dart'; // ignore_for_file: must_be_immutable

class LightDriverTrackDriverOneBottomsheet extends StatelessWidget {
  const LightDriverTrackDriverOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightDriverTrackDriverOneBloc>(
      create: (context) =>
          LightDriverTrackDriverOneBloc(LightDriverTrackDriverOneState(
        lightDriverTrackDriverOneModelObj: LightDriverTrackDriverOneModel(),
      ))
            ..add(LightDriverTrackDriverOneInitialEvent()),
      child: LightDriverTrackDriverOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 22.h,
        top: 6.h,
        right: 22.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadiusStyle.customBorderTL48,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3.h,
            width: 38.h,
            decoration: BoxDecoration(
              color: appTheme.gray300,
              borderRadius: BorderRadius.circular(
                1.h,
              ),
            ),
          ),
          SizedBox(height: 22.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_driver_is_heading".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse60x60,
                        height: 60.h,
                        width: 60.h,
                        radius: BorderRadius.circular(
                          30.h,
                        ),
                      ),
                      SizedBox(width: 20.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_rayford_chenail".tr,
                              style: CustomTextStyles.titleMedium_1,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              "lbl_yamaha_mx_king".tr,
                              style: theme.textTheme.titleSmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 124.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIconlyBulkStar,
                              height: 20.h,
                              width: 20.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "lbl_4_8".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "lbl_hsw_4736_xk".tr,
                        style: CustomTextStyles.titleSmallOnPrimary,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 22.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 22.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 58.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 72.h,
                  width: 72.h,
                  padding: EdgeInsets.all(20.h),
                  decoration: IconButtonStyleHelper.gradientRedAToPinkA,
                  child: CustomImageView(
                    imagePath:
                        ImageConstant.imgIcontimesComponentadditionalIcons,
                  ),
                ),
                CustomIconButton(
                  height: 72.h,
                  width: 72.h,
                  padding: EdgeInsets.all(20.h),
                  decoration: IconButtonStyleHelper.gradientPrimaryToGreenTL36,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUserWhiteA700,
                  ),
                ),
                CustomIconButton(
                  height: 72.h,
                  width: 72.h,
                  padding: EdgeInsets.all(20.h),
                  decoration: IconButtonStyleHelper.gradientPrimaryToGreenTL36,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCall,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 28.h)
        ],
      ),
    );
  }
}
