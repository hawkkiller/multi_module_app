import 'package:cart/cart.dart';
import 'package:listing/listing.dart';
import 'package:settings/settings.dart';

class DependenciesContainer {
  const DependenciesContainer({
    required this.cartDependencies,
    required this.settingsDependencies,
    required this.listingDependencies,
  });

  final CartDependencies cartDependencies;
  final SettingsDependencies settingsDependencies;
  final ListingDependencies listingDependencies;
}
