import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/light_fill_your_profile_filled_bloc.dart';
import 'models/light_fill_your_profile_filled_model.dart';

class LightFillYourProfileFilledScreen extends StatelessWidget {
  const LightFillYourProfileFilledScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightFillYourProfileFilledBloc>(
      create: (context) =>
          LightFillYourProfileFilledBloc(LightFillYourProfileFilledState(
        lightFillYourProfileFilledModelObj: LightFillYourProfileFilledModel(),
      ))
            ..add(LightFillYourProfileFilledInitialEvent()),
      child: LightFillYourProfileFilledScreen(),
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
                        SizedBox(
                          height: 160.h,
                          width: 160.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse,
                                height: 160.h,
                                width: double.maxFinite,
                                radius: BorderRadius.circular(
                                  80.h,
                                ),
                              ),
                              CustomIconButton(
                                height: 40.h,
                                width: 40.h,
                                padding: EdgeInsets.all(2.h),
                                alignment: Alignment.bottomRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEdit,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),
                        _buildFullNameInput(context),
                        SizedBox(height: 24.h),
                        _buildFirstNameInput(context),
                        SizedBox(height: 24.h),
                        _buildBirthdateInput(context),
                        SizedBox(height: 24.h),
                        _buildEmailInput(context),
                        SizedBox(height: 24.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildPhoneNumber(context),
                        ),
                        SizedBox(height: 24.h),
                        BlocSelector<
                            LightFillYourProfileFilledBloc,
                            LightFillYourProfileFilledState,
                            LightFillYourProfileFilledModel?>(
                          selector: (state) =>
                              state.lightFillYourProfileFilledModelObj,
                          builder:
                              (context, lightFillYourProfileFilledModelObj) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 16.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFavorite,
                                  height: 20.h,
                                  width: 20.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              iconSize: 20.h,
                              hintText: "lbl_male".tr,
                              hintStyle: CustomTextStyles.titleSmallOnPrimary,
                              items: lightFillYourProfileFilledModelObj
                                      ?.dropdownItemList ??
                                  [],
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.h,
                                vertical: 18.h,
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 48.h),
                        _buildContinueButton(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 28.h)
                ],
              ),
            ),
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
        text: "msg_fill_your_profile".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameInput(BuildContext context) {
    return BlocSelector<LightFillYourProfileFilledBloc,
        LightFillYourProfileFilledState, TextEditingController?>(
      selector: (state) => state.fullNameInputController,
      builder: (context, fullNameInputController) {
        return CustomTextFormField(
          controller: fullNameInputController,
          hintText: "lbl_andrew_ainsley".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 18.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFirstNameInput(BuildContext context) {
    return BlocSelector<LightFillYourProfileFilledBloc,
        LightFillYourProfileFilledState, TextEditingController?>(
      selector: (state) => state.firstNameInputController,
      builder: (context, firstNameInputController) {
        return CustomTextFormField(
          controller: firstNameInputController,
          hintText: "lbl_andrew".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 18.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBirthdateInput(BuildContext context) {
    return BlocSelector<LightFillYourProfileFilledBloc,
        LightFillYourProfileFilledState, TextEditingController?>(
      selector: (state) => state.birthdateInputController,
      builder: (context, birthdateInputController) {
        return CustomTextFormField(
          readOnly: true,
          controller: birthdateInputController,
          hintText: "lbl_12_27_1995".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 18.h, 20.h, 18.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconlyCurvedCalendar,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.h,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 18.h,
          ),
          onTap: () {
            onTapBirthdateInput(context);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return BlocSelector<LightFillYourProfileFilledBloc,
        LightFillYourProfileFilledState, TextEditingController?>(
      selector: (state) => state.emailInputController,
      builder: (context, emailInputController) {
        return CustomTextFormField(
          controller: emailInputController,
          hintText: "msg_andrew_ainsley_yourdomain_com".tr,
          textInputType: TextInputType.emailAddress,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 18.h, 20.h, 18.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconlyCurvedMessage,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.h,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 18.h,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email";
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocBuilder<LightFillYourProfileFilledBloc,
          LightFillYourProfileFilledState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country: state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context
                  .read<LightFillYourProfileFilledBloc>()
                  .add(ChangeCountryEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_continue".tr,
    );
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [lightFillYourProfileFilledModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapBirthdateInput(BuildContext context) async {
    var initialState =
        BlocProvider.of<LightFillYourProfileFilledBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      context
          .read<LightFillYourProfileFilledBloc>()
          .add(ChangeDateEvent(date: dateTime));
      initialState.birthdateInputController?.text =
          dateTime.format(pattern: M_D_Y);
    }
  }
}
