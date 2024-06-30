import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  Routes._();

  // common routes name
  static const String splash = '/';
  static const String onbarding = '/onboarding';
  static const String login = '/login';
  static const String singUp = '/singUp';
  static const String confirmOTP = '/confirmOTP';
  static const String recoverPassword = '/recoverPassword';
  static const String createPassword = '/createPassword';
  static const String changePassword = '/changePassword';
  static const String webPaymentScreen = '/webPayementScreen';
  static const String supportView = '/supportView';
  static const String refundPolicyView = '/refundPolicyView';
  static const String termsAndConditionsView = '/termsAndConditionsView';
  static const String privacyPolicyView = '/privacyPolicyView';
  static const String languageView = '/languageView';

  // dynamic routes name
  static const String core = '/core';
  static const String homeView = '/homeView';
  static const String categoriesView = '/categoriesView';
  static const String productsView = '/productsView';
  static const String productDetailsView = '/productDetailsView';
  static const String shopView = '/shopView';
  static const String shopsView = '/shopsView';
  static const String shopProductsView = '/shopProductsView';
  static const String myCartView = '/myCartView';
  static const String checkoutView = '/checkoutView';
  static const String addUpdateAddressView = '/addUpdateAddressView';
  static const String profileView = '/profileView';
  static const String myOrderView = '/myOrderView';
  static const String orderDetailsView = '/orderDetailsView';
  static const String manageAddressView = '/manageAddressView';
  static const String favouritesProductView = '/favouritesProductView';
  static const String orderNowView = '/orderNowView';

  static String getCoreRouteName(String service) {
    return '$service$core';
  }

  static String getHomeViewRouteName(String service) {
    return '$service$homeView';
  }

  static String getCategoriesViewRouteName(String service) {
    return '$service$categoriesView';
  }

  static String getProductsViewRouteName(String service) {
    return '$service$productsView';
  }

  static String getProductDetailsRouteName(String service) {
    return '$service$productDetailsView';
  }

  static String getShopViewRouteName(String service) {
    return '$service$shopView';
  }

  static String getShopsViewRouteName(String service) {
    return '$service$shopsView';
  }

  static String getShopProductsViewRouteName(String service) {
    return '$service$shopProductsView';
  }

  static String getMyCartViewRouteName(String service) {
    return '$service$myCartView';
  }

  static String getCheckoutViewRouteName(String service) {
    return '$service$checkoutView';
  }

  static String getAddUpdateAddressViewRouteName(String service) {
    return '$service$addUpdateAddressView';
  }

  static String getProfileViewRouteName(String service) {
    return '$service$profileView';
  }

  static String getMyOrderViewRouteName(String service) {
    return '$service$myOrderView';
  }

  static String getOrderDetailsViewRouteName(String service) {
    return '$service$orderDetailsView';
  }

  static String getManageAddressViewRouteName(String service) {
    return '$service$manageAddressView';
  }

  static String getFavouritesProductsViewRouteName(String service) {
    return '$service$favouritesProductView';
  }

  static String getOrderNowViewRouteName(String service) {
    return '$service$orderNowView';
  }

  // Widget getDashboardView(String serviceName) {
  //   switch (serviceName) {
  //     case 'ecommerce':
  //       return const EcommerceDashboardView();
  //     case 'food':
  //       return const FoodDashboardView();
  //     case 'grocery':
  //       return const GroceryDashboardView();
  //     case 'pharmacy':
  //       return const PharmacyDashboardView();
  //     default:
  //       throw Exception('Invalid service name: $serviceName');
  //   }
  // }

  // Widget getHomeView(String serviceName) {
  //   switch (serviceName) {
  //     case 'ecommerce':
  //       return const EcommerceHomeView();
  //     case 'food':
  //       return const FoodHomeView();
  //     case 'grocery':
  //       return const GroceryHomeView();
  //     case 'pharmacy':
  //       return const PharmacyHomeView();
  //     default:
  //       throw Exception('Invalid service name: $serviceName');
  //   }
  // }
}

PageTransition<dynamic> go(Widget view, RouteSettings settings) {
  debugPrint("Route Name:  ${settings.name}");
  return PageTransition(
    child: view,
    type: PageTransitionType.theme,
    settings: settings,
    duration: const Duration(milliseconds: 300),
    reverseDuration: const Duration(milliseconds: 300),
  );
}
