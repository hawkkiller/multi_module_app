import 'package:app/src/dependencies/dependencies_container.dart';
import 'package:cart/cart.dart';
import 'package:flutter/widgets.dart';
import 'package:settings/settings.dart';

class FeatureDependenciesScope extends StatelessWidget {
  const FeatureDependenciesScope({super.key, required this.child, required this.container});

  final DependenciesContainer container;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var child = this.child;

    child = CartDependenciesInherited(
      dependencies: container.cartDependencies,
      child: child,
    );

    child = SettingsDependenciesInherited(
      dependencies: container.settingsDependencies,
      child: child,
    );

    return child;
  }
}
