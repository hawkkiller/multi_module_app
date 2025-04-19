import 'package:flutter/widgets.dart';
import 'package:navigation_api/cart_navigator.dart';

/// Dependencies container for the cart feature.
class CartDependencies {
  CartDependencies({required this.cartNavigator});

  /// Provides the dependencies of the cart feature to the widget tree.
  static CartDependencies of(BuildContext context) {
    final inherited = context.getInheritedWidgetOfExactType<CartDependenciesInherited>();

    if (inherited == null) {
      throw FlutterError(
        'CartDependencies.of() called with a context that does not contain a CartDependenciesInherited widget.',
      );
    }

    return inherited.dependencies;
  }

  /// Instance should be initialized by the Composition Root.
  final CartNavigator cartNavigator;
}

/// Provides [CartDependencies] to the widget tree.
///
/// This widget is expected to be used by the Composition Root to provide
/// the dependencies of the cart feature to the widget tree.
class CartDependenciesInherited extends InheritedWidget {
  const CartDependenciesInherited({super.key, required this.dependencies, required super.child});

  /// The dependencies of the cart feature.
  final CartDependencies dependencies;

  @override
  bool updateShouldNotify(CartDependenciesInherited oldWidget) {
    // Dependencies are not expected to change, so we return false
    return false;
  }
}
