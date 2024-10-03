import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/light_orders_cancelled_bloc.dart';
import 'lightordersca_tab_page.dart';
import 'models/light_orders_cancelled_model.dart'; // ignore_for_file: must_be_immutable

class LightOrdersCancelledPage extends StatefulWidget {
  const LightOrdersCancelledPage({Key? key})
      : super(
          key: key,
        );

  @override
  LightOrdersCancelledPageState createState() =>
      LightOrdersCancelledPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LightOrdersCancelledBloc>(
      create: (context) => LightOrdersCancelledBloc(LightOrdersCancelledState(
        lightOrdersCancelledModelObj: LightOrdersCancelledModel(),
      ))
        ..add(LightOrdersCancelledInitialEvent()),
      child: LightOrdersCancelledPage(),
    );
  }
}

// ignore_for_file: must_be_immutable
class LightOrdersCancelledPageState extends State<LightOrdersCancelledPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildNavbar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20.h),
              _buildTabview(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      Container(),
                      Container(),
                      LightorderscaTabPage.builder(context)
                    ],
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
  PreferredSizeWidget _buildNavbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgTypeLogoCircle,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: AppbarTitle(
        text: "lbl_orders".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewindOnprimary,
          margin: EdgeInsets.only(right: 24.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.primary,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            child: Text(
              "lbl_active".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_completed".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_cancelled".tr,
            ),
          )
        ],
      ),
    );
  }
}
