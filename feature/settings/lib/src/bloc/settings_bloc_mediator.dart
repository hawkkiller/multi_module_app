import 'package:settings/src/bloc/settings_bloc.dart';
import 'package:settings_api/settings_api.dart';

class SettingsBlocMediator implements SettingsController {
  const SettingsBlocMediator({required this.settingsBloc});

  final SettingsBloc settingsBloc;

  @override
  SettingsModel get settings => settingsBloc.state.settings;

  @override
  Stream<SettingsModel> get settingsStream => settingsBloc.stream.map((state) => state.settings);
}
