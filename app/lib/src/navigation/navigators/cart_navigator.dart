import 'package:app/src/navigation/routes.dart';
import 'package:app/src/navigation/routes/cart_routes.dart';
import 'package:cart_navigator/cart_navigator.dart';
import 'package:flutter/material.dart';

final class CartNavigatorGoRouter implements CartNavigator {
  const CartNavigatorGoRouter();

  @override
  void goToCartDetails(BuildContext context) {
    CartDetailsRoute().go(context);
  }
}
