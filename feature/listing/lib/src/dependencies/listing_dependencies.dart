import 'package:flutter/widgets.dart';
import 'package:settings/settings.dart';

/// Dependencies container for the cart feature.
class ListingDependencies {
  ListingDependencies({required this.settingsController});

  /// Provides the dependencies of the cart feature to the widget tree.
  static ListingDependencies of(BuildContext context) {
    final inherited = context.getInheritedWidgetOfExactType<ListingDependenciesInherited>();

    if (inherited == null) {
      throw FlutterError(
        'CartDependencies.of() called with a context that does not contain a CartDependenciesInherited widget.',
      );
    }

    return inherited.dependencies;
  }

  final SettingsController settingsController;
}

class ListingDependenciesInherited extends InheritedWidget {
  const ListingDependenciesInherited({super.key, required this.dependencies, required super.child});

  /// The dependencies of the cart feature.
  final ListingDependencies dependencies;

  @override
  bool updateShouldNotify(ListingDependenciesInherited oldWidget) {
    // Dependencies are not expected to change, so we return false
    return false;
  }
}
