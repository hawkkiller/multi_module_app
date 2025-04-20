import 'package:settings/src/bloc/settings_bloc.dart';
import 'package:settings_api/settings_api.dart';

class SettingsBlocMediator implements SettingsController {
  SettingsBlocMediator({required this.settingsBloc});

  final SettingsBloc settingsBloc;

  @override
  SettingsModel get settings => settingsBloc.state.settings;

  @override
  late final settingsStream = settingsBloc.stream.map((state) => state.settings);
  
  @override
  void updateSettings(SettingsModel settings) {
    settingsBloc.add(SettingsEventSave(settings: settings));
  }
}
