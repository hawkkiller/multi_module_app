import 'package:cart/src/dependencies/cart_dependencies.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dependencies = CartDependencies.of(context);

    return Center(
      child: TextButton(
        onPressed: () => dependencies.cartNavigator.goToCartDetails(context),
        child: Text('Open Details'),
      ),
    );
  }
}
