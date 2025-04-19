import 'package:flutter/widgets.dart';
import 'package:settings/src/bloc/settings_bloc.dart';
import 'package:settings/src/dependencies/settings_dependencies.dart';

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
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
