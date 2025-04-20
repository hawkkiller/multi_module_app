import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/settings.dart';
import 'package:settings_api/settings_api.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final container = SettingsDependencies.of(context);
    return SettingsView(settingsBloc: container.settingsBloc);
  }
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key, required this.settingsBloc});

  final SettingsBloc settingsBloc;

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late SettingsModel _settings = widget.settingsBloc.state.settings;

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

    widget.settingsBloc.add(SettingsEventSave(settings: settings));
  }

  void _updateNotificationsEnabled(bool value) {
    _updateSettings(_settings.copyWith(notificationsEnabled: value));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsBloc, SettingsState>(
      bloc: widget.settingsBloc,
      listener: (context, state) {
        _onSettingsChanged(state.settings);
      },
      child: Scaffold(
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
      ),
    );
  }
}
