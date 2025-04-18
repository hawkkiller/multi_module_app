import 'package:app/src/navigation_api/cart_navigator.dart';
import 'package:cart/cart.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class CartBranch extends StatefulShellBranchData {
  const CartBranch();
}

class CartRoute extends GoRouteData {
  const CartRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CartScreen(cartNavigator: CartNavigatorGoRouter());
  }
}

class CartDetailsRoute extends GoRouteData {
  const CartDetailsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }
}
