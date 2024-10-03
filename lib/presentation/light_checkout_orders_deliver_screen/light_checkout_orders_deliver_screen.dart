import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/light_checkout_orders_deliver_bloc.dart';
import 'models/addresslist_item_model.dart';
import 'models/light_checkout_orders_deliver_model.dart';
import 'widgets/addresslist_item_widget.dart';

class LightCheckoutOrdersDeliverScreen extends StatelessWidget {
  const LightCheckoutOrdersDeliverScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightCheckoutOrdersDeliverBloc>(
      create: (context) =>
          LightCheckoutOrdersDeliverBloc(LightCheckoutOrdersDeliverState(
        lightCheckoutOrdersDeliverModelObj: LightCheckoutOrdersDeliverModel(),
      ))
            ..add(LightCheckoutOrdersDeliverInitialEvent()),
      child: LightCheckoutOrdersDeliverScreen(),
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
                        _buildAddressList(context),
                        SizedBox(height: 24.h),
                        CustomElevatedButton(
                          text: "lbl_add_new_address".tr,
                          buttonStyle: CustomButtonStyles.fillGreenTL28,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumPrimary16,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildApplyButtonSection(context),
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
        text: "lbl_deliver_to".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressList(BuildContext context) {
    return BlocSelector<LightCheckoutOrdersDeliverBloc,
        LightCheckoutOrdersDeliverState, LightCheckoutOrdersDeliverModel?>(
      selector: (state) => state.lightCheckoutOrdersDeliverModelObj,
      builder: (context, lightCheckoutOrdersDeliverModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 24.h,
            );
          },
          itemCount:
              lightCheckoutOrdersDeliverModelObj?.addresslistItemList.length ??
                  0,
          itemBuilder: (context, index) {
            AddresslistItemModel model = lightCheckoutOrdersDeliverModelObj
                    ?.addresslistItemList[index] ??
                AddresslistItemModel();
            return AddresslistItemWidget(
              model,
              onTapRadioGroup: (value) {
                context
                    .read<LightCheckoutOrdersDeliverBloc>()
                    .add(AddresslistItemEvent(index: index, radioGroup: value));
              },
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildApplyButtonSection(BuildContext context) {
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
            text: "lbl_apply".tr,
          )
        ],
      ),
    );
  }
}
