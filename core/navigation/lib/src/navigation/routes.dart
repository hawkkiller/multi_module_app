import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/src/navigation/cart_routes.dart';
import 'package:navigation/src/navigation/listing_routes.dart';
import 'package:navigation/src/widget/navigation_scaffold.dart';

part 'routes.g.dart';

/// Composition root of the app's navigation
/// 
/// This is the only exported function from navigation package
GoRouter $createGoRouter() {
  return GoRouter(routes: $appRoutes, initialLocation: ListingRoute().location);
}

@TypedStatefulShellRoute<RootShellRoute>(
  branches: [
    TypedStatefulShellBranch<ListingBranch>(routes: [TypedGoRoute<ListingRoute>(path: '/listing')]),
    TypedStatefulShellBranch<CartBranch>(
      routes: [
        TypedGoRoute<CartRoute>(
          path: '/cart',
          routes: [TypedGoRoute<CartDetailsRoute>(path: 'details')],
        ),
      ],
    ),
  ],
)
class RootShellRoute extends StatefulShellRouteData {
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) => NavigationScaffold(navigationShell: navigationShell);
}
