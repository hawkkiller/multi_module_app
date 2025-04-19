import 'package:settings_api/settings_api.dart';

abstract interface class SettingsDatasource {
  Future<SettingsModel?> getSettings();
  Future<void> saveSettings(SettingsModel settings);
}
