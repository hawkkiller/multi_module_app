import 'package:flutter/material.dart';
import 'package:settings/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final SettingsController settingsController;

  @override
  void initState() {
    super.initState();
    settingsController = SettingsDependenciesInherited.of(context).settingsController;
  }

  void _updateNotificationsEnabled(bool value) {
    final currentSettings = settingsController.settings;
    settingsController.updateSettings(currentSettings.copyWith(notificationsEnabled: value));
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settingsController,
      builder: (context, child) {
        return Scaffold(
          body: Column(
            children: [
              SwitchListTile(
                title: const Text('Enable Notifications'),
                value: settingsController.settings.notificationsEnabled,
                onChanged: _updateNotificationsEnabled,
              ),
            ],
          ),
        );
      },
    );
  }
}
