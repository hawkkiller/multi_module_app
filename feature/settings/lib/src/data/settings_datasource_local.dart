import 'dart:convert';

import 'package:key_value_database/key_value_database.dart';
import 'package:settings/settings.dart';
import 'package:settings/src/data/settings_datasource.dart';

final class SettingsDatasourceLocal implements SettingsDatasource {
  SettingsDatasourceLocal(this._database);

  final KeyValueDatabase _database;
  final _settingsColumn = KeyValueColumnSettings('feature.settings');

  @override
  Future<SettingsModel?> getSettings() {
    return _settingsColumn.read(_database);
  }

  @override
  Future<void> saveSettings(SettingsModel settings) {
    return _settingsColumn.write(_database, settings);
  }
}

final class KeyValueColumnSettings extends KeyValueColumn<SettingsModel> {
  const KeyValueColumnSettings(super.key);

  @override
  Future<SettingsModel?> read(KeyValueDatabase database) async {
    final settingsString = await database.getString(key);
    if (settingsString == null) return null;

    final decoded = jsonDecode(settingsString);
    return SettingsModel.fromJson(decoded);
  }

  @override
  Future<void> write(KeyValueDatabase database, SettingsModel value) {
    return database.writeString(key, jsonEncode(value.toJson()));
  }
}
