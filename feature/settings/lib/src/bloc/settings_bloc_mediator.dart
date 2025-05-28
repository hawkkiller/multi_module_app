import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:settings/src/bloc/settings_bloc.dart';
import 'package:settings_api/settings_api.dart';

class SettingsBlocMediator with ChangeNotifier implements SettingsController {
  SettingsBlocMediator({required this.settingsBloc}) : _state = settingsBloc.state {
    _subscription = settingsBloc.stream.listen((state) {
      _state = state;
      notifyListeners();
    });
  }

  final SettingsBloc settingsBloc;
  late final StreamSubscription<SettingsState> _subscription;
  SettingsState _state;

  @override
  SettingsModel get settings => _state.settings;

  @override
  void updateSettings(SettingsModel settings) {
    settingsBloc.add(SettingsEventSave(settings: settings));
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
