import 'package:cart/src/widget/cart_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class CartBranch extends StatefulShellBranchData {
  const CartBranch();
}

class CartRoute extends GoRouteData {
  const CartRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CartScreen();
  }
}
