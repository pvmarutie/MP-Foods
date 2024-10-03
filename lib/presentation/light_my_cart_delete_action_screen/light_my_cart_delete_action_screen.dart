import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/light_my_cart_delete_action_bloc.dart';
import 'models/cartlistsection_item_model.dart';
import 'models/light_my_cart_delete_action_model.dart';
import 'widgets/cartlistsection_item_widget.dart';

class LightMyCartDeleteActionScreen extends StatelessWidget {
  const LightMyCartDeleteActionScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightMyCartDeleteActionBloc>(
      create: (context) =>
          LightMyCartDeleteActionBloc(LightMyCartDeleteActionState(
        lightMyCartDeleteActionModelObj: LightMyCartDeleteActionModel(),
      ))
            ..add(LightMyCartDeleteActionInitialEvent()),
      child: LightMyCartDeleteActionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20.h),
              _buildThumbsUpSection(context),
              SizedBox(height: 20.h),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [_buildCartListSection(context)],
                  ),
                ),
              )
            ],
          ),
        ),
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
        text: "lbl_my_cart".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.only(right: 24.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildThumbsUpSection(BuildContext context) {
    return SizedBox(
      height: 148.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            width: 404.h,
            margin: EdgeInsets.only(right: 24.h),
            decoration: BoxDecoration(
              color: appTheme.redA200,
              borderRadius: BorderRadius.circular(
                28.h,
              ),
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(right: 28.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 32.h,
                    width: 32.h,
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: IntrinsicWidth(
              child: Container(
                width: 330.h,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 120.h,
                      width: 116.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle120x70,
                            height: 120.h,
                            width: 70.h,
                            radius: BorderRadius.circular(
                              24.h,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            height: 120.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle120x84,
                                  height: 120.h,
                                  width: 84.h,
                                  radius: BorderRadius.circular(
                                    24.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle120x100,
                                  height: 120.h,
                                  width: 100.h,
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
                            "msg_mixed_salad_bon".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          SizedBox(height: 12.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Text(
                                  "lbl_3_items".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "lbl".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "lbl_1_5_km".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            "lbl_18_00".tr,
                            style: CustomTextStyles.titleLargePrimary,
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

  /// Section Widget
  Widget _buildCartListSection(BuildContext context) {
    return Expanded(
      child: BlocSelector<LightMyCartDeleteActionBloc,
          LightMyCartDeleteActionState, LightMyCartDeleteActionModel?>(
        selector: (state) => state.lightMyCartDeleteActionModelObj,
        builder: (context, lightMyCartDeleteActionModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20.h,
              );
            },
            itemCount: lightMyCartDeleteActionModelObj
                    ?.cartlistsectionItemList.length ??
                0,
            itemBuilder: (context, index) {
              CartlistsectionItemModel model = lightMyCartDeleteActionModelObj
                      ?.cartlistsectionItemList[index] ??
                  CartlistsectionItemModel();
              return CartlistsectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
