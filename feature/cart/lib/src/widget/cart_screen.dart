import 'package:cart/src/dependencies/cart_dependencies.dart';
import 'package:cart_navigator/cart_navigator.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dependencies = CartDependencies.of(context);

    return CartView(cartNavigator: dependencies.cartNavigator);
  }
}

class CartView extends StatelessWidget {
  const CartView({super.key, required this.cartNavigator});

  final CartNavigator cartNavigator;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => cartNavigator.goToCartDetails(context),
        child: Text('Open Details'),
      ),
    );
  }
}
