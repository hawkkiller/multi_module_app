import 'package:app/src/navigation/routes.dart';
import 'package:app/src/navigation/routes/cart_routes.dart';
import 'package:flutter/material.dart';
import 'package:navigation_api/cart_navigator.dart';

final class CartNavigatorGoRouter implements CartNavigator {
  const CartNavigatorGoRouter();

  @override
  void goToCartDetails(BuildContext context) {
    CartDetailsRoute().go(context);
  }
}
