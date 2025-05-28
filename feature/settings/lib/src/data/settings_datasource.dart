import 'package:settings/settings.dart';

abstract interface class SettingsDatasource {
  Future<SettingsModel?> getSettings();
  Future<void> saveSettings(SettingsModel settings);
}
