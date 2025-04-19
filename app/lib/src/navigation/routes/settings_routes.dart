import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:settings/settings.dart';

class SettingsBranch extends StatefulShellBranchData {
  const SettingsBranch();
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsScreen();
  }
}
