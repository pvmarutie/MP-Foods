import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/light_restaurant_details_add_bloc.dart';
import 'models/light_restaurant_details_add_model.dart';

class LightRestaurantDetailsAddScreen extends StatelessWidget {
  const LightRestaurantDetailsAddScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightRestaurantDetailsAddBloc>(
      create: (context) =>
          LightRestaurantDetailsAddBloc(LightRestaurantDetailsAddState(
        lightRestaurantDetailsAddModelObj: LightRestaurantDetailsAddModel(),
      ))
            ..add(LightRestaurantDetailsAddInitialEvent()),
      child: LightRestaurantDetailsAddScreen(),
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
              _buildImageStack(context),
              _buildMenuScrollView(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildAddToBasketSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageStack(BuildContext context) {
    return SizedBox(
      height: 384.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage384x428,
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
                  imagePath: ImageConstant.imgIconlyCurvedSend,
                  margin: EdgeInsets.only(right: 24.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 22.h,
            right: 24.h,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_mixed_vegetable".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(),
                    ),
                    SizedBox(height: 20.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 348.h,
                        child: Text(
                          "msg_this_vegetable_salad".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleMediumGray800Medium
                              .copyWith(
                            height: 1.40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 86.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<LightRestaurantDetailsAddBloc>()
                                  .add(DecrementQuantity1Event(quantity: 1));
                            },
                            child: Container(
                              height: 58.h,
                              width: 58.h,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadiusStyle.circleBorder16,
                                border: Border.all(
                                  color: appTheme.gray300,
                                  width: 1.h,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIconMinusCom,
                                    height: 24.h,
                                    width: 24.h,
                                  )
                                ],
                              ),
                            ),
                          ),
                          BlocSelector<LightRestaurantDetailsAddBloc,
                              LightRestaurantDetailsAddState, int?>(
                            selector: (state) => state.quantity,
                            builder: (context, quantity) {
                              return Text(
                                (quantity ?? "").toString(),
                                style: theme.textTheme.headlineLarge,
                              );
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<LightRestaurantDetailsAddBloc>()
                                  .add(IncrementQuantity1Event(quantity: 1));
                            },
                            child: Container(
                              height: 58.h,
                              width: 58.h,
                              decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadiusStyle.circleBorder16,
                                border: Border.all(
                                  color: appTheme.gray300,
                                  width: 1.h,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgIconPlusComp,
                                    height: 24.h,
                                    width: 24.h,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    BlocSelector<LightRestaurantDetailsAddBloc,
                        LightRestaurantDetailsAddState, TextEditingController?>(
                      selector: (state) => state.statusdefaultController,
                      builder: (context, statusdefaultController) {
                        return CustomTextFormField(
                          controller: statusdefaultController,
                          hintText: "msg_note_to_restaurant".tr,
                          textInputAction: TextInputAction.done,
                          maxLines: 2,
                          contentPadding:
                              EdgeInsets.fromLTRB(20.h, 22.h, 20.h, 12.h),
                        );
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 12.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToBasketSection(BuildContext context) {
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
        children: [
          CustomElevatedButton(
            text: "msg_add_to_basket".tr,
          )
        ],
      ),
    );
  }
}
