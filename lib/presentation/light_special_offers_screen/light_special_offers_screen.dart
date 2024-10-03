import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/light_special_offers_bloc.dart';
import 'models/light_special_offers_model.dart';
import 'models/specialofferslist_item_model.dart';
import 'widgets/specialofferslist_item_widget.dart';

class LightSpecialOffersScreen extends StatelessWidget {
  const LightSpecialOffersScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightSpecialOffersBloc>(
      create: (context) => LightSpecialOffersBloc(LightSpecialOffersState(
        lightSpecialOffersModelObj: LightSpecialOffersModel(),
      ))
        ..add(LightSpecialOffersInitialEvent()),
      child: LightSpecialOffersScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20.h),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [_buildSpecialOffersList(context)],
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
        text: "lbl_special_offers".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialOffersList(BuildContext context) {
    return Expanded(
      child: BlocSelector<LightSpecialOffersBloc, LightSpecialOffersState,
          LightSpecialOffersModel?>(
        selector: (state) => state.lightSpecialOffersModelObj,
        builder: (context, lightSpecialOffersModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 24.h,
              );
            },
            itemCount:
                lightSpecialOffersModelObj?.specialofferslistItemList.length ??
                    0,
            itemBuilder: (context, index) {
              SpecialofferslistItemModel model = lightSpecialOffersModelObj
                      ?.specialofferslistItemList[index] ??
                  SpecialofferslistItemModel();
              return SpecialofferslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
