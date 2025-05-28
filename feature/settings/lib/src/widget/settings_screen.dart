import 'package:flutter/material.dart';
import 'package:settings/settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final container = SettingsDependenciesInherited.of(context);

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
  void _updateNotificationsEnabled(bool value) {
    final currentSettings = widget.settingsController.settings;
    widget.settingsController.updateSettings(currentSettings.copyWith(notificationsEnabled: value));
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.settingsController,
      builder: (context, child) {
        return Scaffold(
          body: Column(
            children: [
              SwitchListTile(
                title: const Text('Enable Notifications'),
                value: widget.settingsController.settings.notificationsEnabled,
                onChanged: _updateNotificationsEnabled,
              ),
              // Add more settings options here
            ],
          ),
        );
      },
    );
  }
}
