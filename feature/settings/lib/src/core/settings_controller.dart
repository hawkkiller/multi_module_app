import 'package:flutter/widgets.dart';
import 'package:settings/src/model/settings_model.dart';

/// An interface for a settings controller.
abstract interface class SettingsController implements Listenable {
  /// The current settings.
  SettingsModel get settings;

  /// Update the settings.
  void updateSettings(SettingsModel settings);

  /// Dispose the controller.
  void dispose();
}
