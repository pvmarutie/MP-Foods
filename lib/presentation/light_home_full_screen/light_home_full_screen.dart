import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../light_orders_cancelled_page/light_orders_cancelled_page.dart';
import 'bloc/light_home_full_bloc.dart';
import 'light_home_full_initial_page.dart';
import 'models/light_home_full_model.dart';

// ignore_for_file: must_be_immutable
class LightHomeFullScreen extends StatelessWidget {
  LightHomeFullScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<LightHomeFullBloc>(
      create: (context) => LightHomeFullBloc(LightHomeFullState(
        lightHomeFullModelObj: LightHomeFullModel(),
      ))
        ..add(LightHomeFullInitialEvent()),
      child: LightHomeFullScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.lightHomeFullInitialPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigationBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.lightHomeFullInitialPage;
      case BottomBarEnum.Orders:
        return AppRoutes.lightOrdersCancelledPage;
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Ewallet:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.lightHomeFullInitialPage:
        return LightHomeFullInitialPage.builder(context);
      case AppRoutes.lightOrdersCancelledPage:
        return LightOrdersCancelledPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
