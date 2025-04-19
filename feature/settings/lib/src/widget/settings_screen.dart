import 'package:flutter/widgets.dart';
import 'package:settings/src/dependencies/settings_dependencies.dart';
import 'package:settings_api/settings_api.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final container = SettingsDependencies.of(context);
    return SettingsView(settingsController: container.settingsController);
  }
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key, required this.settingsController});

  final SettingsController settingsController;

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
