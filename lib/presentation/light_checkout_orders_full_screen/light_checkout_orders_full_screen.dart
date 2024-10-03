import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/light_checkout_orders_full_bloc.dart';
import 'models/light_checkout_orders_full_model.dart';
import 'models/listmenunameone_item_model.dart';
import 'widgets/listmenunameone_item_widget.dart';

class LightCheckoutOrdersFullScreen extends StatelessWidget {
  const LightCheckoutOrdersFullScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightCheckoutOrdersFullBloc>(
      create: (context) =>
          LightCheckoutOrdersFullBloc(LightCheckoutOrdersFullState(
        lightCheckoutOrdersFullModelObj: LightCheckoutOrdersFullModel(),
      ))
            ..add(LightCheckoutOrdersFullInitialEvent()),
      child: LightCheckoutOrdersFullScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                top: 20.h,
                right: 24.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        _buildAddressSection(context),
                        SizedBox(height: 28.h),
                        _buildOrderSummarySection(context),
                        SizedBox(height: 28.h),
                        _buildPaymentsDiscountsSection(context),
                        SizedBox(height: 28.h),
                        _buildOrderAmountSection(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildFooterSection(context),
      ),
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
        text: "lbl_checkout_orders".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildDefault(BuildContext context) {
    return CustomElevatedButton(
      height: 24.h,
      width: 54.h,
      text: "lbl_default".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL61,
      buttonTextStyle: CustomTextStyles.labelMediumPrimarySemiBold,
    );
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_deliver_to".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
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
                              "lbl_home".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            _buildDefault(context)
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "msg_times_square_nyc".tr,
                        style: theme.textTheme.titleSmall,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 16.h),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 24.h,
                  width: 24.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddItemsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 98.h,
      text: "lbl_add_items".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
    );
  }

  /// Section Widget
  Widget _buildOrderSummarySection(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_order_summary".tr,
                  style: theme.textTheme.titleLarge,
                ),
                _buildAddItemsButton(context)
              ],
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 18.h),
          BlocSelector<LightCheckoutOrdersFullBloc,
              LightCheckoutOrdersFullState, LightCheckoutOrdersFullModel?>(
            selector: (state) => state.lightCheckoutOrdersFullModelObj,
            builder: (context, lightCheckoutOrdersFullModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0.h),
                    child: Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: appTheme.gray200,
                    ),
                  );
                },
                itemCount: lightCheckoutOrdersFullModelObj
                        ?.listmenunameoneItemList.length ??
                    0,
                itemBuilder: (context, index) {
                  ListmenunameoneItemModel model =
                      lightCheckoutOrdersFullModelObj
                              ?.listmenunameoneItemList[index] ??
                          ListmenunameoneItemModel();
                  return ListmenunameoneItemWidget(
                    model,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentsDiscountsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildDiscountsRow(
              context,
              userThree: ImageConstant.imgUser,
              getdiscounts: "lbl_payment_methods".tr,
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildDiscountsRow(
              context,
              userThree: ImageConstant.imgUserPrimary,
              getdiscounts: "lbl_get_discounts".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderAmountSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildDeliveryFeeRow(
              context,
              deliveryfeeOne: "lbl_subtotal".tr,
              priceOne: "lbl_24_00".tr,
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildDeliveryFeeRow(
              context,
              deliveryfeeOne: "lbl_delivery_fee".tr,
              priceOne: "lbl_2_00".tr,
            ),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildDeliveryFeeRow(
              context,
              deliveryfeeOne: "lbl_total".tr,
              priceOne: "lbl_26_00".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaceOrderButton(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_place_order_26_00".tr,
      buttonStyle: CustomButtonStyles.fillGreen,
    );
  }

  /// Section Widget
  Widget _buildFooterSection(BuildContext context) {
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
        children: [_buildPlaceOrderButton(context)],
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryFeeRow(
    BuildContext context, {
    required String deliveryfeeOne,
    required String priceOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            deliveryfeeOne,
            style: CustomTextStyles.titleSmallGray800.copyWith(
              color: appTheme.gray800,
            ),
          ),
        ),
        Text(
          priceOne,
          style: CustomTextStyles.titleMediumSemiBold16.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildDiscountsRow(
    BuildContext context, {
    required String userThree,
    required String getdiscounts,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: userThree,
          height: 24.h,
          width: 24.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            getdiscounts,
            style: CustomTextStyles.titleSmallOnPrimary_1.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightPrimary,
          height: 20.h,
          width: 20.h,
        )
      ],
    );
  }
}
