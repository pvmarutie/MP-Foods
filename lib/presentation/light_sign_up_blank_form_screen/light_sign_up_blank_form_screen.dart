import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/light_sign_up_blank_form_bloc.dart';
import 'models/light_sign_up_blank_form_model.dart';

class LightSignUpBlankFormScreen extends StatelessWidget {
  const LightSignUpBlankFormScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LightSignUpBlankFormBloc>(
      create: (context) => LightSignUpBlankFormBloc(LightSignUpBlankFormState(
        lightSignUpBlankFormModelObj: LightSignUpBlankFormModel(),
      ))
        ..add(LightSignUpBlankFormInitialEvent()),
      child: LightSignUpBlankFormScreen(),
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
              padding: EdgeInsets.all(24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame,
                          height: 76.h,
                          width: 120.h,
                        ),
                        SizedBox(height: 44.h),
                        Text(
                          "msg_create_new_account".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(height: 22.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildPhoneNumber(context),
                        ),
                        SizedBox(height: 20.h),
                        _buildEmailInput(context),
                        SizedBox(height: 20.h),
                        _buildFullNameInput(context),
                        SizedBox(height: 20.h),
                        _buildRememberMeCheckbox(context),
                        SizedBox(height: 20.h),
                        _buildSignUpButton(context),
                        SizedBox(height: 36.h),
                        _buildContinueWithRow(context),
                        SizedBox(height: 22.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomIconButton(
                              height: 60.h,
                              width: 88.h,
                              padding: EdgeInsets.all(18.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgAutoLayoutHorizontal,
                              ),
                            ),
                            SizedBox(width: 20.h),
                            CustomIconButton(
                              height: 60.h,
                              width: 86.h,
                              padding: EdgeInsets.all(18.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgAutoLayoutHorizontalRed500,
                              ),
                            ),
                            SizedBox(width: 20.h),
                            CustomIconButton(
                              height: 60.h,
                              width: 88.h,
                              padding: EdgeInsets.all(18.h),
                              decoration: IconButtonStyleHelper.outlineGray,
                              child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgAutoLayoutHorizontalBlack900,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 28.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "msg_already_have_an".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(width: 8.h),
                            Text(
                              "lbl_sign_in".tr,
                              style: CustomTextStyles.titleSmallPrimary,
                            )
                          ],
                        )
                      ],
                    ),
                  )
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
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocBuilder<LightSignUpBlankFormBloc, LightSignUpBlankFormState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country: state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context
                  .read<LightSignUpBlankFormBloc>()
                  .add(ChangeCountryEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return BlocSelector<LightSignUpBlankFormBloc, LightSignUpBlankFormState,
        TextEditingController?>(
      selector: (state) => state.emailInputController,
      builder: (context, emailInputController) {
        return CustomTextFormField(
          controller: emailInputController,
          hintText: "lbl_email".tr,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(20.h, 18.h, 12.h, 18.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 60.h,
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
  Widget _buildFullNameInput(BuildContext context) {
    return BlocSelector<LightSignUpBlankFormBloc, LightSignUpBlankFormState,
        TextEditingController?>(
      selector: (state) => state.fullNameInputController,
      builder: (context, fullNameInputController) {
        return CustomTextFormField(
          controller: fullNameInputController,
          hintText: "lbl_full_name".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(20.h, 18.h, 12.h, 18.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 60.h,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 18.h,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password";
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRememberMeCheckbox(BuildContext context) {
    return BlocSelector<LightSignUpBlankFormBloc, LightSignUpBlankFormState,
        bool?>(
      selector: (state) => state.rememberMeCheckbox,
      builder: (context, rememberMeCheckbox) {
        return CustomCheckboxButton(
          text: "lbl_remember_me".tr,
          value: rememberMeCheckbox,
          onChange: (value) {
            context
                .read<LightSignUpBlankFormBloc>()
                .add(ChangeCheckBoxEvent(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      buttonStyle: CustomButtonStyles.fillGreen,
    );
  }

  /// Section Widget
  Widget _buildContinueWithRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(),
          ),
          SizedBox(width: 16.h),
          Text(
            "msg_or_continue_with".tr,
            style: CustomTextStyles.titleMediumGray600,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Divider(),
          )
        ],
      ),
    );
  }
}
