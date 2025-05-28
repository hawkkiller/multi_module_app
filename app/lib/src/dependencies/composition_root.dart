import 'package:app/src/dependencies/dependencies_container.dart';
import 'package:app/src/navigation/navigators/cart_navigator.dart';
import 'package:cart/cart.dart';
import 'package:listing/listing.dart';
import 'package:navigation_api/cart_navigator.dart';
import 'package:settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefs_database/shared_prefs_database.dart';

Future<DependenciesContainer> buildDependenciesContainer() async {
  const cartNavigator = CartNavigatorGoRouter();
  final sharedPreferencesAsync = SharedPreferencesAsync();
  final value = SharedPrefsDatabase(sharedPreferencesAsync);

  final settingsDependencies = await SettingsDependencies.create(value);

  final cartDependencies = buildCartDependencies(
    cartNavigator,
    settingsDependencies.settingsController,
  );

  final listingDependencies = buildListingDependencies(settingsDependencies.settingsController);

  return DependenciesContainer(
    cartDependencies: cartDependencies,
    settingsDependencies: settingsDependencies,
    listingDependencies: listingDependencies,
  );
}

CartDependencies buildCartDependencies(
  CartNavigator cartNavigator,
  SettingsController settingsController,
) {
  return CartDependencies(cartNavigator: cartNavigator, settingsController: settingsController);
}

ListingDependencies buildListingDependencies(SettingsController settingsController) {
  return ListingDependencies(settingsController: settingsController);
}
