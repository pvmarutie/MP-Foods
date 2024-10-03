import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../light_driver_track_driver_one_bottomsheet/light_driver_track_driver_one_bottomsheet.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Text(
                            "App Navigation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Check your app's UI from the below demo screens of your app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF888888),
                              fontSize: 16.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: Color(0XFF000000),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "7_Light_sign up blank form",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightSignUpBlankFormScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "15_Light_fill your profile filled",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightFillYourProfileFilledScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "22_Light_home full",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightHomeFullScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "24_Light_notification",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightNotificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "27_Light_my cart delete action",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightMyCartDeleteActionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "28_Light_special offers",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightSpecialOffersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "40_Light_restaurant details, about",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightRestaurantDetailsAboutScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "43_Light_restaurant details, add",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightRestaurantDetailsAddScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "44_Light_restaurant details full",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightRestaurantDetailsFullScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "45_Light_checkout orders full",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightCheckoutOrdersFullScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "46_Light_checkout orders, deliver",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightCheckoutOrdersDeliverScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "49_Light_checkout orders full",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightCheckoutOrdersFull1Screen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "51_Light_finding nearby driver",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.lightFindingNearbyDriverScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "52_Light_driver, track driver One - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                  context,
                                  LightDriverTrackDriverOneBottomsheet.builder(
                                      context)),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
