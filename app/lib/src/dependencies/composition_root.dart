import 'package:app/src/dependencies/dependencies_container.dart';
import 'package:app/src/navigation/navigators/cart_navigator.dart';
import 'package:cart/cart.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<DependenciesContainer> buildDependenciesContainer() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final cartNavigator = CartNavigatorGoRouter();

  final cartDependencies = CartDependencies(
    cartNavigator: cartNavigator,
    sharedPrefereces: sharedPreferences,
  );

  return DependenciesContainer(cartDependencies: cartDependencies);
}
