import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/light_home_full_bloc.dart';
import 'models/autolayout_six_item_model.dart';
import 'models/lighthome_tab_model.dart';
import 'widgets/autolayout_six_item_widget.dart';

class LighthomeTabPage extends StatefulWidget {
  const LighthomeTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  LighthomeTabPageState createState() => LighthomeTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LightHomeFullBloc>(
      create: (context) => LightHomeFullBloc(LightHomeFullState(
        lighthomeTabModelObj: LighthomeTabModel(),
      ))
        ..add(LightHomeFullInitialEvent()),
      child: LighthomeTabPage(),
    );
  }
}

class LighthomeTabPageState extends State<LighthomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          SizedBox(height: 24.h),
          BlocSelector<LightHomeFullBloc, LightHomeFullState,
              LighthomeTabModel?>(
            selector: (state) => state.lighthomeTabModelObj,
            builder: (context, lighthomeTabModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20.h,
                  );
                },
                itemCount:
                    lighthomeTabModelObj?.autolayoutSixItemList.length ?? 0,
                itemBuilder: (context, index) {
                  AutolayoutSixItemModel model =
                      lighthomeTabModelObj?.autolayoutSixItemList[index] ??
                          AutolayoutSixItemModel();
                  return AutolayoutSixItemWidget(
                    model,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
