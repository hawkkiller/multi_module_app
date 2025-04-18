import 'package:cart_navigator/cart_navigator.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.cartNavigator});

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
