import 'package:app/src/dependencies/dependencies_container.dart';
import 'package:app/src/navigation/navigators/cart_navigator.dart';
import 'package:cart/cart.dart';
import 'package:settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefs_database/shared_prefs_database.dart';

Future<DependenciesContainer> buildDependenciesContainer() async {
  const cartNavigator = CartNavigatorGoRouter();
  final sharedPreferencesAsync = SharedPreferencesAsync();
  final value = SharedPrefsDatabase(sharedPreferencesAsync);

  final cartDependencies = CartDependencies(cartNavigator: cartNavigator);
  final settingsDependencies = await SettingsDependencies.create(value);

  return DependenciesContainer(
    cartDependencies: cartDependencies,
    settingsDependencies: settingsDependencies,
  );
}
