// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    OrdersRoute.name: (routeData) {
      final args = routeData.argsAs<OrdersRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: OrdersPage(
              pharmacy: args.pharmacy,
              medications: args.medications,
              key: args.key));
    },
    PharmacyDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PharmacyDetailsRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: PharmacyDetailsPage(
              pharmacyDetails: args.pharmacyDetails, key: args.key));
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: SettingsPage(key: args.key, controller: args.controller));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(OrdersRoute.name, path: '/orders-page'),
        RouteConfig(PharmacyDetailsRoute.name, path: '/pharmacy-details-page'),
        RouteConfig(SettingsRoute.name, path: '/settings-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [OrdersPage]
class OrdersRoute extends PageRouteInfo<OrdersRouteArgs> {
  OrdersRoute(
      {required Pharmacy pharmacy,
      List<String> medications = const [],
      Key? key})
      : super(OrdersRoute.name,
            path: '/orders-page',
            args: OrdersRouteArgs(
                pharmacy: pharmacy, medications: medications, key: key));

  static const String name = 'OrdersRoute';
}

class OrdersRouteArgs {
  const OrdersRouteArgs(
      {required this.pharmacy, this.medications = const [], this.key});

  final Pharmacy pharmacy;

  final List<String> medications;

  final Key? key;

  @override
  String toString() {
    return 'OrdersRouteArgs{pharmacy: $pharmacy, medications: $medications, key: $key}';
  }
}

/// generated route for
/// [PharmacyDetailsPage]
class PharmacyDetailsRoute extends PageRouteInfo<PharmacyDetailsRouteArgs> {
  PharmacyDetailsRoute({required PharmacyDetails pharmacyDetails, Key? key})
      : super(PharmacyDetailsRoute.name,
            path: '/pharmacy-details-page',
            args: PharmacyDetailsRouteArgs(
                pharmacyDetails: pharmacyDetails, key: key));

  static const String name = 'PharmacyDetailsRoute';
}

class PharmacyDetailsRouteArgs {
  const PharmacyDetailsRouteArgs({required this.pharmacyDetails, this.key});

  final PharmacyDetails pharmacyDetails;

  final Key? key;

  @override
  String toString() {
    return 'PharmacyDetailsRouteArgs{pharmacyDetails: $pharmacyDetails, key: $key}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({Key? key, required SettingsController controller})
      : super(SettingsRoute.name,
            path: '/settings-page',
            args: SettingsRouteArgs(key: key, controller: controller));

  static const String name = 'SettingsRoute';
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key, required this.controller});

  final Key? key;

  final SettingsController controller;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, controller: $controller}';
  }
}
