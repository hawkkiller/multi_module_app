// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$rootShellRoute];

RouteBase get $rootShellRoute => StatefulShellRouteData.$route(
  navigatorContainerBuilder: RootShellRoute.$navigatorContainerBuilder,
  factory: $RootShellRouteExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/listing',

          factory: $ListingRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/cart',

          factory: $CartRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'details',

              factory: $CartDetailsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $RootShellRouteExtension on RootShellRoute {
  static RootShellRoute _fromState(GoRouterState state) => RootShellRoute();
}

extension $ListingRouteExtension on ListingRoute {
  static ListingRoute _fromState(GoRouterState state) => const ListingRoute();

  String get location => GoRouteData.$location('/listing');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CartRouteExtension on CartRoute {
  static CartRoute _fromState(GoRouterState state) => const CartRoute();

  String get location => GoRouteData.$location('/cart');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CartDetailsRouteExtension on CartDetailsRoute {
  static CartDetailsRoute _fromState(GoRouterState state) =>
      const CartDetailsRoute();

  String get location => GoRouteData.$location('/cart/details');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
