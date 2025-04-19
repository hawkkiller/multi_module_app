import 'package:cart/cart.dart';
import 'package:settings/settings.dart';

class DependenciesContainer {
  const DependenciesContainer({required this.cartDependencies, required this.settingsDependencies});

  final CartDependencies cartDependencies;
  final SettingsDependencies settingsDependencies;
}
