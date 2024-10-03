import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title_dropdown.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/light_home_full_bloc.dart';
import 'lighthome_tab_page.dart';
import 'models/autolayout_four_item_model.dart';
import 'models/gridhamburone_item_model.dart';
import 'models/light_home_full_initial_model.dart';
import 'widgets/autolayout_four_item_widget.dart';
import 'widgets/gridhamburone_item_widget.dart';

class LightHomeFullInitialPage extends StatefulWidget {
  const LightHomeFullInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  LightHomeFullInitialPageState createState() =>
      LightHomeFullInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LightHomeFullBloc>(
      create: (context) => LightHomeFullBloc(LightHomeFullState(
        lightHomeFullInitialModelObj: LightHomeFullInitialModel(),
      ))
        ..add(LightHomeFullInitialEvent()),
      child: LightHomeFullInitialPage(),
    );
  }
}

// ignore_for_file: must_be_immutable
class LightHomeFullInitialPageState extends State<LightHomeFullInitialPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildAppBar(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 22.h),
                    _buildSearchAndCategories(context),
                    SizedBox(height: 24.h),
                    _buildDiscountSection(context),
                    SizedBox(height: 24.h),
                    _buildRecommendedSection(context),
                    SizedBox(height: 24.h),
                    _buildTabview(context),
                    _buildMainContentPager(context)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  /// Common widget
  Widget _buildAutolayoutFive(
    BuildContext context, {
    required String recommendedfor,
    required String seeallTwo,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          recommendedfor,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        Text(
          seeallTwo,
          style: CustomTextStyles.titleMediumPrimary16.copyWith(
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 72.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgEllipse48x48,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_deliver_to".tr,
              margin: EdgeInsets.only(right: 86.h),
            ),
            SizedBox(height: 6.h),
            BlocSelector<LightHomeFullBloc, LightHomeFullState,
                LightHomeFullInitialModel?>(
              selector: (state) => state.lightHomeFullInitialModelObj,
              builder: (context, lightHomeFullInitialModelObj) {
                return AppbarTitleDropdown(
                  hintText: "lbl_times_square".tr,
                  items: lightHomeFullInitialModelObj?.dropdownItemList ?? [],
                  onTap: (value) {
                    context
                        .read<LightHomeFullBloc>()
                        .add(onSelected(value: value));
                  },
                );
              },
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgIconlyCurvedNotification,
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgIconlyLightOutlineBag,
          margin: EdgeInsets.only(
            left: 16.h,
            right: 24.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchAndCategories(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              BlocSelector<LightHomeFullBloc, LightHomeFullState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_what_are_you_craving".tr,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 18.h,
                    ),
                  );
                },
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.maxFinite,
                child: _buildAutolayoutFive(
                  context,
                  recommendedfor: "lbl_special_offers".tr,
                  seeallTwo: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder36,
                  gradient: LinearGradient(
                    begin: Alignment(1, 1),
                    end: Alignment(0, 0),
                    colors: [theme.colorScheme.primary, appTheme.green400],
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup218,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 164.h,
                      margin: EdgeInsets.only(bottom: 26.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_30".tr,
                            style: theme.textTheme.displayLarge,
                          ),
                          SizedBox(
                            width: 142.h,
                            child: Text(
                              "msg_discount_only_valid".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.56,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 168.h,
                      width: 182.h,
                      margin: EdgeInsets.only(top: 12.h),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 20.h,
                ),
                child: BlocSelector<LightHomeFullBloc, LightHomeFullState,
                    LightHomeFullInitialModel?>(
                  selector: (state) => state.lightHomeFullInitialModelObj,
                  builder: (context, lightHomeFullInitialModelObj) {
                    return ResponsiveGridListBuilder(
                      minItemWidth: 1,
                      minItemsPerRow: 4,
                      maxItemsPerRow: 4,
                      horizontalGridSpacing: 38.h,
                      verticalGridSpacing: 38.h,
                      builder: (context, items) => ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: items,
                      ),
                      gridItems: List.generate(
                        lightHomeFullInitialModelObj
                                ?.gridhamburoneItemList.length ??
                            0,
                        (index) {
                          GridhamburoneItemModel model =
                              lightHomeFullInitialModelObj
                                      ?.gridhamburoneItemList[index] ??
                                  GridhamburoneItemModel();
                          return GridhamburoneItemWidget(
                            model,
                          );
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_discount_guaranteed".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 24.h),
                        child: Text(
                          "lbl_see_all".tr,
                          style: CustomTextStyles.titleMediumPrimary16,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.h),
          SizedBox(
            child: BlocSelector<LightHomeFullBloc, LightHomeFullState,
                LightHomeFullInitialModel?>(
              selector: (state) => state.lightHomeFullInitialModelObj,
              builder: (context, lightHomeFullInitialModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 16.h,
                    children: List.generate(
                      lightHomeFullInitialModelObj
                              ?.autolayoutFourItemList.length ??
                          0,
                      (index) {
                        AutolayoutFourItemModel model =
                            lightHomeFullInitialModelObj
                                    ?.autolayoutFourItemList[index] ??
                                AutolayoutFourItemModel();
                        return AutolayoutFourItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: _buildAutolayoutFive(
                  context,
                  recommendedfor: "msg_recommended_for".tr,
                  seeallTwo: "lbl_see_all".tr,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      width: 404.h,
      margin: EdgeInsets.only(left: 24.h),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.primary,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        tabs: [
          Tab(
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 0
                  ? BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ))
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.h,
                ),
                child: Text(
                  "lbl_all".tr,
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 1
                  ? BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ))
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.h,
                ),
                child: Text(
                  "lbl_hamburger".tr,
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 2
                  ? BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ))
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.h,
                ),
                child: Text(
                  "lbl_pizza2".tr,
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 3
                  ? BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ))
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.h,
                ),
                child: Text(
                  "lbl_drink2".tr,
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 4
                  ? BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ))
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.h,
                ),
                child: Text(
                  "lbl_others".tr,
                ),
              ),
            ),
          )
        ],
        indicatorColor: Colors.transparent,
        onTap: (index) {
          tabIndex = index;
          setState(() {});
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContentPager(BuildContext context) {
    return SizedBox(
      height: 726.h,
      child: TabBarView(
        controller: tabviewController,
        children: [
          LighthomeTabPage.builder(context),
          LighthomeTabPage.builder(context),
          LighthomeTabPage.builder(context),
          LighthomeTabPage.builder(context),
          LighthomeTabPage.builder(context)
        ],
      ),
    );
  }
}
