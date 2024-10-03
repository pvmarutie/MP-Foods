import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/light_notification_bloc.dart';
import 'models/light_notification_model.dart';
import 'models/notificationlist_item_model.dart';
import 'widgets/notificationlist_item_widget.dart';

class LightNotificationScreen extends StatelessWidget {
  const LightNotificationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightNotificationBloc>(
      create: (context) => LightNotificationBloc(LightNotificationState(
        lightNotificationModelObj: LightNotificationModel(),
      ))
        ..add(LightNotificationInitialEvent()),
      child: LightNotificationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 24.h,
            top: 20.h,
            right: 24.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [_buildNotificationList(context)],
                  ),
                ),
              ),
              SizedBox(height: 56.h)
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
        text: "lbl_notification".tr,
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
  Widget _buildNotificationList(BuildContext context) {
    return Expanded(
      child: BlocSelector<LightNotificationBloc, LightNotificationState,
          LightNotificationModel?>(
        selector: (state) => state.lightNotificationModelObj,
        builder: (context, lightNotificationModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 22.h,
              );
            },
            itemCount:
                lightNotificationModelObj?.notificationlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              NotificationlistItemModel model =
                  lightNotificationModelObj?.notificationlistItemList[index] ??
                      NotificationlistItemModel();
              return NotificationlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
