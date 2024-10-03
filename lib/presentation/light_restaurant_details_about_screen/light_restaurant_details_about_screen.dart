import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:readmore/readmore.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/light_restaurant_details_about_bloc.dart';
import 'models/light_restaurant_details_about_model.dart';

// ignore_for_file: must_be_immutable
class LightRestaurantDetailsAboutScreen extends StatelessWidget {
  LightRestaurantDetailsAboutScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<LightRestaurantDetailsAboutBloc>(
      create: (context) =>
          LightRestaurantDetailsAboutBloc(LightRestaurantDetailsAboutState(
        lightRestaurantDetailsAboutModelObj: LightRestaurantDetailsAboutModel(),
      ))
            ..add(LightRestaurantDetailsAboutInitialEvent()),
      child: LightRestaurantDetailsAboutScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LightRestaurantDetailsAboutBloc,
        LightRestaurantDetailsAboutState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 4.h,
                    right: 24.h,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 14.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_big_garden_salad".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                            SizedBox(height: 16.h),
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                            SizedBox(height: 22.h),
                            _buildSaladDetails(context),
                            SizedBox(height: 24.h),
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                            SizedBox(height: 22.h),
                            Text(
                              "lbl_overview".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                            SizedBox(height: 16.h),
                            Container(
                              width: 372.h,
                              margin: EdgeInsets.only(right: 6.h),
                              child: ReadMoreText(
                                "msg_lorem_ipsum_dolor".tr,
                                trimLines: 2,
                                colorClickableText: theme.colorScheme.primary,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: "lbl_read_more".tr,
                                moreStyle: CustomTextStyles
                                    .titleMediumGray800Medium
                                    .copyWith(
                                  height: 1.40,
                                ),
                                lessStyle: CustomTextStyles
                                    .titleMediumGray800Medium
                                    .copyWith(
                                  height: 1.40,
                                ),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            _buildWeekdayHours(context),
                            SizedBox(height: 8.h),
                            _buildWeekendHours(context),
                            SizedBox(height: 24.h),
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                            SizedBox(height: 22.h),
                            Text(
                              "lbl_address".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                            SizedBox(height: 16.h),
                            _buildAddressSection(context)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: _buildMapAndLocations(context),
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
    );
  }

  /// Section Widget
  Widget _buildSaladDetails(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "lbl_4_8".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 12.h),
              CustomRatingBar(
                initialRating: 0,
              ),
              SizedBox(height: 12.h),
              Text(
                "lbl_4_8k_reviews".tr,
                style: CustomTextStyles.titleMediumGray800,
              )
            ],
          ),
          SizedBox(width: 16.h),
          VerticalDivider(
            width: 1.h,
            thickness: 1.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_5".tr,
                        style: CustomTextStyles.titleMediumSemiBold16,
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: SizedBox(
                          height: 6.h,
                          width: 186.h,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_4".tr,
                        style: CustomTextStyles.titleMediumSemiBold16,
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: SizedBox(
                          height: 6.h,
                          width: 186.h,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        "lbl_3".tr,
                        style: CustomTextStyles.titleMediumSemiBold16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 6.h,
                          width: 24.h,
                          child: ClipRRect(
                            child: LinearProgressIndicator(
                              value: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Text(
                        "lbl_2".tr,
                        style: CustomTextStyles.titleMediumSemiBold16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 6.h,
                          width: 36.h,
                          child: ClipRRect(
                            child: LinearProgressIndicator(
                              value: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Row(
                    children: [
                      Text(
                        "lbl_1".tr,
                        style: CustomTextStyles.titleMediumSemiBold16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 6.h,
                          width: 10.h,
                          child: ClipRRect(
                            child: LinearProgressIndicator(
                              value: 0,
                            ),
                          ),
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
  Widget _buildWeekdayHours(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Text(
            "lbl_monday_friday".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          Spacer(),
          Text(
            "lbl3".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 72.h,
            ),
            child: Text(
              "lbl_10_00_22_00".tr,
              style: CustomTextStyles.titleMediumPrimary_2,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeekendHours(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Text(
            "msg_saturyday_sunday".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl3".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_12_00_20_00".tr,
              style: CustomTextStyles.titleMediumPrimary_2,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconlyBoldLocation,
            height: 24.h,
            width: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_grand_city_st_100".tr,
              style: CustomTextStyles.titleMediumGray700,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMapAndLocations(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(bottom: 12.h),
              color: appTheme.green50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Container(
                height: 200.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.green50,
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 200.h,
                      width: 380.h,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(
                            37.43296265331129,
                            -122.08832357078792,
                          ),
                          zoom: 14.4746,
                        ),
                        onMapCreated: (GoogleMapController controller) {
                          googleMapController.complete(controller);
                        },
                        zoomControlsEnabled: false,
                        zoomGesturesEnabled: false,
                        myLocationButtonEnabled: false,
                        myLocationEnabled: false,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 24.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 16.h),
                                  child: Text(
                                    "msg_488_farwell_road".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 36.h),
                                    child: Text(
                                      "msg_657_lukken_court".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Container(
                            height: 32.h,
                            width: 32.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.circleBorder16,
                              border: Border.all(
                                color: appTheme.whiteA700,
                                width: 3.h,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse32x32,
                                  height: 32.h,
                                  width: double.maxFinite,
                                  radius: BorderRadius.circular(
                                    16.h,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 4.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 34.h),
                                    child: Text(
                                      "msg_9_evergreen_center".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Text(
                                  "msg_59797_elka_trail".tr,
                                  style: theme.textTheme.bodySmall,
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
            ),
          )
        ],
      ),
    );
  }
}
