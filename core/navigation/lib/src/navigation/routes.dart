import 'package:cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:listing/listing.dart';
import 'package:navigation/src/widget/navigation_scaffold.dart';

part 'routes.g.dart';

@TypedStatefulShellRoute<RootShellRoute>(
  branches: [
    TypedStatefulShellBranch<ListingBranch>(routes: [TypedGoRoute<ListingRoute>(path: '/listing')]),
    TypedStatefulShellBranch<CartBranch>(routes: [TypedGoRoute<CartRoute>(path: '/cart')]),
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
