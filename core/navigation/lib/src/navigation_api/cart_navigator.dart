import 'package:cart_navigator/cart_navigator.dart';
import 'package:flutter/material.dart';
import 'package:navigation/src/navigation/cart_routes.dart';
import 'package:navigation/src/navigation/routes.dart';

final class CartNavigatorGoRouter implements CartNavigator {
  const CartNavigatorGoRouter();

  @override
  void goToCartDetails(BuildContext context) {
    CartDetailsRoute().go(context);
  }
}
