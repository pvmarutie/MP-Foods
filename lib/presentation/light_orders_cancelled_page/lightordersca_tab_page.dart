import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/light_orders_cancelled_bloc.dart';
import 'models/light_orders_cancelled_model.dart';
import 'models/lightordersca_tab_model.dart';
import 'models/orderslist_item_model.dart';
import 'widgets/orderslist_item_widget.dart';

class LightorderscaTabPage extends StatefulWidget {
  const LightorderscaTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  LightorderscaTabPageState createState() => LightorderscaTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LightOrdersCancelledBloc>(
      create: (context) => LightOrdersCancelledBloc(LightOrdersCancelledState(
        lightorderscaTabModelObj: LightorderscaTabModel(),
      ))
        ..add(LightOrdersCancelledInitialEvent()),
      child: LightorderscaTabPage(),
    );
  }
}

class LightorderscaTabPageState extends State<LightorderscaTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [SizedBox(height: 24.h), _buildOrdersList(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrdersList(BuildContext context) {
    return Expanded(
      child: BlocSelector<LightOrdersCancelledBloc, LightOrdersCancelledState,
          LightorderscaTabModel?>(
        selector: (state) => state.lightorderscaTabModelObj,
        builder: (context, lightorderscaTabModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 24.h,
              );
            },
            itemCount: lightorderscaTabModelObj?.orderslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              OrderslistItemModel model =
                  lightorderscaTabModelObj?.orderslistItemList[index] ??
                      OrderslistItemModel();
              return OrderslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
