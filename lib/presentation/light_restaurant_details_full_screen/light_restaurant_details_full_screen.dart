import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/light_restaurant_details_full_bloc.dart';
import 'models/light_restaurant_details_full_model.dart';
import 'models/promolist_item_model.dart';
import 'models/speciallist_item_model.dart';
import 'widgets/promolist_item_widget.dart';
import 'widgets/speciallist_item_widget.dart';

class LightRestaurantDetailsFullScreen extends StatelessWidget {
  const LightRestaurantDetailsFullScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightRestaurantDetailsFullBloc>(
      create: (context) =>
          LightRestaurantDetailsFullBloc(LightRestaurantDetailsFullState(
        lightRestaurantDetailsFullModelObj: LightRestaurantDetailsFullModel(),
      ))
            ..add(LightRestaurantDetailsFullInitialEvent()),
      child: LightRestaurantDetailsFullScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildMainContentStack(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      children: [
                        SizedBox(height: 22.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSaladHeader(context),
                              SizedBox(height: 8.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 14.h),
                              _buildSaladRating(context),
                              SizedBox(height: 16.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 14.h),
                              _buildLocationDeliveryInfo(context),
                              SizedBox(height: 16.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 14.h),
                              _buildOffersSection(context),
                              SizedBox(height: 24.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 22.h),
                              Text(
                                "lbl_for_you".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                              SizedBox(height: 20.h),
                              _buildFeaturedItems(context),
                              SizedBox(height: 24.h),
                              Text(
                                "lbl_menu".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                              SizedBox(height: 20.h),
                              _buildSpecialList(context),
                              SizedBox(height: 24.h),
                              Text(
                                "lbl_drink".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                              SizedBox(height: 20.h),
                              _buildPromoList(context)
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
        ),
        bottomNavigationBar: _buildFooter(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentStack(BuildContext context) {
    return SizedBox(
      height: 384.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 384.h,
            width: double.maxFinite,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CustomAppBar(
              height: 28.h,
              leadingWidth: 52.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgArrowDownWhiteA700,
                margin: EdgeInsets.only(left: 24.h),
              ),
              actions: [
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgIconlyLightOutlineHeartWhiteA700,
                ),
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgIconlyCurvedSend,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 24.h,
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
  Widget _buildSaladHeader(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_big_garden_salad".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.h,
            width: 24.h,
            margin: EdgeInsets.only(top: 8.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaladRating(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconlyBoldStar,
            height: 24.h,
            width: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_4_8".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_4_8k_reviews".tr,
              style: CustomTextStyles.titleMediumGray700,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.h,
            width: 24.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDeliveryInfo(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconlyBoldLocation,
            height: 24.h,
            width: 24.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_2_4_km".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 4.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Text(
                          "lbl_delivery_now".tr,
                          style: CustomTextStyles.titleMediumGray700,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "lbl".tr,
                            style: CustomTextStyles.titleMediumGray700,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconDelivery,
                          height: 24.h,
                          width: 24.h,
                          margin: EdgeInsets.only(left: 12.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "lbl_2_00".tr,
                            style: CustomTextStyles.titleMediumGray700,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.h,
            width: 24.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOffersSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconlyBoldDiscount,
            height: 24.h,
            width: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "msg_offers_are_available".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.h,
            width: 24.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestseller(BuildContext context) {
    return CustomElevatedButton(
      height: 24.h,
      width: 70.h,
      text: "lbl_best_seller".tr,
      margin: EdgeInsets.only(
        left: 12.h,
        top: 12.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.labelMediumWhiteA700,
      alignment: Alignment.topLeft,
    );
  }

  /// Section Widget
  Widget _buildFeaturedItems(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 154.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle154x154,
                          height: 154.h,
                          width: double.maxFinite,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                        _buildBestseller(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "msg_1x_mixed_vegetable".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumPrimary_2.copyWith(
                      height: 1.40,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "lbl_12_00".tr,
                    style: CustomTextStyles.titleMediumPrimary_2,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Container(
              width: double.maxFinite,
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle17,
                    height: 154.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    width: 108.h,
                    child: Text(
                      "msg_fruit_spice_salad".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMedium_1.copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "lbl_10_00".tr,
                    style: CustomTextStyles.titleMediumPrimary_2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialList(BuildContext context) {
    return BlocSelector<LightRestaurantDetailsFullBloc,
        LightRestaurantDetailsFullState, LightRestaurantDetailsFullModel?>(
      selector: (state) => state.lightRestaurantDetailsFullModelObj,
      builder: (context, lightRestaurantDetailsFullModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20.h,
            );
          },
          itemCount:
              lightRestaurantDetailsFullModelObj?.speciallistItemList.length ??
                  0,
          itemBuilder: (context, index) {
            SpeciallistItemModel model = lightRestaurantDetailsFullModelObj
                    ?.speciallistItemList[index] ??
                SpeciallistItemModel();
            return SpeciallistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPromoList(BuildContext context) {
    return BlocSelector<LightRestaurantDetailsFullBloc,
        LightRestaurantDetailsFullState, LightRestaurantDetailsFullModel?>(
      selector: (state) => state.lightRestaurantDetailsFullModelObj,
      builder: (context, lightRestaurantDetailsFullModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20.h,
            );
          },
          itemCount:
              lightRestaurantDetailsFullModelObj?.promolistItemList.length ?? 0,
          itemBuilder: (context, index) {
            PromolistItemModel model =
                lightRestaurantDetailsFullModelObj?.promolistItemList[index] ??
                    PromolistItemModel();
            return PromolistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBasketSummary(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_basket_3_items".tr,
    );
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildBasketSummary(context)],
      ),
    );
  }
}
