import 'dart:async';

import 'package:flutter/material.dart';
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
  late SettingsModel _settings;
  late final StreamSubscription<SettingsModel> settingsSubscription;

  @override
  void initState() {
    super.initState();
    _settings = widget.settingsController.settings;
    settingsSubscription = widget.settingsController.settingsStream.listen(_onSettingsChanged);
  }

  @override
  void dispose() {
    settingsSubscription.cancel();
    super.dispose();
  }

  void _onSettingsChanged(SettingsModel settings) {
    if (settings == _settings) {
      return;
    }

    setState(() {
      _settings = settings;
    });
  }

  void _updateSettings(SettingsModel settings) {
    setState(() {
      _settings = settings;
    });

    widget.settingsController.updateSettings(settings);
  }

  void _updateNotificationsEnabled(bool value) {
    _updateSettings(_settings.copyWith(notificationsEnabled: value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Enable Notifications'),
            value: _settings.notificationsEnabled,
            onChanged: _updateNotificationsEnabled,
          ),
          // Add more settings options here
        ],
      ),
    );
  }
}
