import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/settings.dart';
import 'package:settings/src/data/settings_datasource.dart';

sealed class SettingsEvent {
  const SettingsEvent();
}

final class SettingsEventSave extends SettingsEvent {
  const SettingsEventSave({required this.settings});

  final SettingsModel settings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SettingsEventSave && settings == other.settings;

  @override
  int get hashCode => settings.hashCode;

  @override
  String toString() => 'SettingsEventSave(settings: $settings)';
}

sealed class SettingsState {
  const SettingsState({required this.settings});

  final SettingsModel settings;
}

final class SettingsStateIdle extends SettingsState {
  const SettingsStateIdle({required super.settings});

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SettingsStateIdle && settings == other.settings;

  @override
  int get hashCode => settings.hashCode;

  @override
  String toString() => 'SettingsStateIdle(settings: $settings)';
}

final class SettingsStateProgressing extends SettingsState {
  const SettingsStateProgressing({required super.settings});

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SettingsStateProgressing && settings == other.settings;

  @override
  int get hashCode => settings.hashCode;

  @override
  String toString() => 'SettingsStateSaving(settings: $settings)';
}

final class SettingsStateError extends SettingsState {
  const SettingsStateError({required super.settings, required this.error});

  final Object error;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsStateError && settings == other.settings && error == other.error;

  @override
  int get hashCode => settings.hashCode ^ error.hashCode;

  @override
  String toString() => 'SettingsStateError(settings: $settings, error: $error)';
}

final class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({required this.settingsDatasource, required SettingsState initialState})
    : super(initialState) {
    on<SettingsEvent>(
      (event, emit) async => switch (event) {
        SettingsEventSave eventSave => await _onSettingsEventSave(eventSave, emit),
      },
    );
  }

  final SettingsDatasource settingsDatasource;

  Future<void> _onSettingsEventSave(SettingsEventSave event, Emitter<SettingsState> emit) async {
    emit(SettingsStateProgressing(settings: event.settings));

    try {
      await settingsDatasource.saveSettings(event.settings);
      emit(SettingsStateIdle(settings: event.settings));
    } catch (error, stackTrace) {
      emit(SettingsStateError(settings: event.settings, error: error));
      onError(error, stackTrace);
    }
  }
}
