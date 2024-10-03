import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/light_checkout_orders_deliver_screen/light_checkout_orders_deliver_screen.dart';
import '../presentation/light_checkout_orders_full1_screen/light_checkout_orders_full1_screen.dart';
import '../presentation/light_checkout_orders_full_screen/light_checkout_orders_full_screen.dart';
import '../presentation/light_fill_your_profile_filled_screen/light_fill_your_profile_filled_screen.dart';
import '../presentation/light_finding_nearby_driver_screen/light_finding_nearby_driver_screen.dart';
import '../presentation/light_home_full_screen/light_home_full_screen.dart';
import '../presentation/light_my_cart_delete_action_screen/light_my_cart_delete_action_screen.dart';
import '../presentation/light_notification_screen/light_notification_screen.dart';
import '../presentation/light_restaurant_details_about_screen/light_restaurant_details_about_screen.dart';
import '../presentation/light_restaurant_details_add_screen/light_restaurant_details_add_screen.dart';
import '../presentation/light_restaurant_details_full_screen/light_restaurant_details_full_screen.dart';
import '../presentation/light_sign_up_blank_form_screen/light_sign_up_blank_form_screen.dart';
import '../presentation/light_special_offers_screen/light_special_offers_screen.dart';

class AppRoutes {
  static const String lightSignUpBlankFormScreen =
      '/light_sign_up_blank_form_screen';

  static const String lightFillYourProfileFilledScreen =
      '/light_fill_your_profile_filled_screen';

  static const String lightHomeFullScreen = '/light_home_full_screen';

  static const String lightHomeFullInitialPage =
      '/light_home_full_initial_page';

  static const String lighthomeTabPage = '/lighthome_tab_page';

  static const String lightNotificationScreen = '/light_notification_screen';

  static const String lightMyCartDeleteActionScreen =
      '/light_my_cart_delete_action_screen';

  static const String lightSpecialOffersScreen = '/light_special_offers_screen';

  static const String lightRestaurantDetailsAboutScreen =
      '/light_restaurant_details_about_screen';

  static const String lightRestaurantDetailsAddScreen =
      '/light_restaurant_details_add_screen';

  static const String lightRestaurantDetailsFullScreen =
      '/light_restaurant_details_full_screen';

  static const String lightCheckoutOrdersFullScreen =
      '/light_checkout_orders_full_screen';

  static const String lightCheckoutOrdersDeliverScreen =
      '/light_checkout_orders_deliver_screen';

  static const String lightCheckoutOrdersFull1Screen =
      '/light_checkout_orders_full1_screen';

  static const String lightFindingNearbyDriverScreen =
      '/light_finding_nearby_driver_screen';

  static const String lightOrdersCancelledPage = '/light_orders_cancelled_page';

  static const String lightorderscaTabPage = '/lightordersca_tab_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        lightSignUpBlankFormScreen: LightSignUpBlankFormScreen.builder,
        lightFillYourProfileFilledScreen:
            LightFillYourProfileFilledScreen.builder,
        lightHomeFullScreen: LightHomeFullScreen.builder,
        lightNotificationScreen: LightNotificationScreen.builder,
        lightMyCartDeleteActionScreen: LightMyCartDeleteActionScreen.builder,
        lightSpecialOffersScreen: LightSpecialOffersScreen.builder,
        lightRestaurantDetailsAboutScreen:
            LightRestaurantDetailsAboutScreen.builder,
        lightRestaurantDetailsAddScreen:
            LightRestaurantDetailsAddScreen.builder,
        lightRestaurantDetailsFullScreen:
            LightRestaurantDetailsFullScreen.builder,
        lightCheckoutOrdersFullScreen: LightCheckoutOrdersFullScreen.builder,
        lightCheckoutOrdersDeliverScreen:
            LightCheckoutOrdersDeliverScreen.builder,
        lightCheckoutOrdersFull1Screen: LightCheckoutOrdersFull1Screen.builder,
        lightFindingNearbyDriverScreen: LightFindingNearbyDriverScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LightSignUpBlankFormScreen.builder
      };
}
