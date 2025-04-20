import 'package:settings_api/src/model/settings_model.dart';

/// An interface for a settings controller.
abstract interface class SettingsController {
  /// The stream of settings changes.
  Stream<SettingsModel> get settingsStream;

  /// The current settings.
  SettingsModel get settings;

  /// Update the settings.
  void updateSettings(SettingsModel settings);
}
