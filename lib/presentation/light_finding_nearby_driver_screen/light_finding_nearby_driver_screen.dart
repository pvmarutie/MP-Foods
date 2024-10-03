import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/light_finding_nearby_driver_bloc.dart';
import 'models/light_finding_nearby_driver_model.dart';

class LightFindingNearbyDriverScreen extends StatelessWidget {
  const LightFindingNearbyDriverScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightFindingNearbyDriverBloc>(
      create: (context) =>
          LightFindingNearbyDriverBloc(LightFindingNearbyDriverState(
        lightFindingNearbyDriverModelObj: LightFindingNearbyDriverModel(),
      ))
            ..add(LightFindingNearbyDriverInitialEvent()),
      child: LightFindingNearbyDriverScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LightFindingNearbyDriverBloc,
        LightFindingNearbyDriverState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.green50,
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.green50,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.img51LightFinding,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 56.h),
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 34.h,
                  right: 24.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 14.h),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFrame,
                                  height: 50.h,
                                  width: 80.h,
                                ),
                                SizedBox(height: 30.h),
                                Text(
                                  "msg_finding_you_a_nearby".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  "msg_this_may_take_a".tr,
                                  style: CustomTextStyles.titleMediumGray700,
                                ),
                                SizedBox(height: 86.h),
                                _buildDriverSearchStatus(context)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildCancelSlide(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: AppbarTitle(
        text: "msg_searching_driver".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildDriverSearchStatus(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 52.h,
        vertical: 50.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadiusStyle.circleBorder174,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 50.h,
              vertical: 46.h,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.2),
              borderRadius: BorderRadiusStyle.circleBorder122,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 144.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.3),
                    borderRadius: BorderRadiusStyle.circleBorder72,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse80x80,
                        height: 80.h,
                        width: 80.h,
                        radius: BorderRadius.circular(
                          40.h,
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
    );
  }

  /// Section Widget
  Widget _buildCancelSlide(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 230.h,
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              borderRadius: BorderRadiusStyle.roundedBorder36,
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
                Container(
                  height: 44.h,
                  width: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                    gradient: LinearGradient(
                      begin: Alignment(1, 1),
                      end: Alignment(0, 0),
                      colors: [theme.colorScheme.primary, appTheme.green400],
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgIcontimesComponentadditionalIcons,
                        height: 20.h,
                        width: 20.h,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 16.h),
                Text(
                  "msg_slide_to_cancel".tr,
                  style: CustomTextStyles.titleMediumGray700,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
