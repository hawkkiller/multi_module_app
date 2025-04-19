import 'package:key_value_database/key_value_database.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsDatabase implements KeyValueDatabase {
  SharedPrefsDatabase(this.sharedPreferences);

  final SharedPreferencesAsync sharedPreferences;

  @override
  Future<bool?> getBoolean(String key) => sharedPreferences.getBool(key);

  @override
  Future<double?> getDouble(String key) => sharedPreferences.getDouble(key);

  @override
  Future<int?> getInteger(String key) => sharedPreferences.getInt(key);

  @override
  Future<String?> getString(String key) => sharedPreferences.getString(key);

  @override
  Future<void> remove(String key) => sharedPreferences.remove(key);

  @override
  Future<void> writeBoolean(String key, bool value) => sharedPreferences.setBool(key, value);

  @override
  Future<void> writeDouble(String key, double value) => sharedPreferences.setDouble(key, value);

  @override
  Future<void> writeInteger(String key, int value) => sharedPreferences.setInt(key, value);

  @override
  Future<void> writeString(String key, String value) => sharedPreferences.setString(key, value);
}
