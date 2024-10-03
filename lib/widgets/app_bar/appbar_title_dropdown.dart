import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../custom_drop_down.dart';

class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown(
      {Key? key,
      required this.hintText,
      required this.items,
      required this.onTap,
      this.margin})
      : super(
          key: key,
        );

  final String? hintText;

  final List<SelectionPopupModel> items;

  final Function(SelectionPopupModel) onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 154.h,
        icon: Container(
          margin: EdgeInsets.only(left: 8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFavoritePrimary,
            height: 20.h,
            width: 20.h,
            fit: BoxFit.contain,
          ),
        ),
        iconSize: 20.h,
        hintText: "lbl_times_square".tr,
        items: items,
        contentPadding: EdgeInsets.only(
          left: 12.h,
          top: 2.h,
          bottom: 2.h,
        ),
      ),
    );
  }
}
