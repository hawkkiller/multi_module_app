import 'package:app/src/navigation/routes/cart_routes.dart';
import 'package:app/src/navigation/routes/listing_routes.dart';
import 'package:app/src/widget/navigation_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

/// Composition root of the app's navigation
///
/// This is the only exported function from navigation package
GoRouter createRouter() {
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
