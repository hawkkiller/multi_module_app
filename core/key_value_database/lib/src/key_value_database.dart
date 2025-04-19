abstract interface class KeyValueDatabase {
  Future<bool?> getBoolean(String key);
  Future<int?> getInteger(String key);
  Future<double?> getDouble(String key);
  Future<String?> getString(String key);

  Future<void> writeBoolean(String key, bool value);
  Future<void> writeInteger(String key, int value);
  Future<void> writeDouble(String key, double value);
  Future<void> writeString(String key, String value);

  Future<void> remove(String key);
}
