import 'package:key_value_database/src/key_value_database.dart';

abstract base class KeyValueColumn<T> {
  const KeyValueColumn(this.key);

  final String key;
  Future<T?> read(KeyValueDatabase database);

  Future<void> write(KeyValueDatabase database, T value);

  Future<void> writeOrRemove(KeyValueDatabase database, T? value) {
    if (value == null) {
      return remove(database);
    } else {
      return write(database, value);
    }
  }

  Future<void> remove(KeyValueDatabase database) {
    return database.remove(key);
  }
}

final class KeyValueColumnString extends KeyValueColumn<String> {
  const KeyValueColumnString(super.key);

  @override
  Future<String?> read(KeyValueDatabase database) => database.getString(key);

  @override
  Future<void> write(KeyValueDatabase database, String value) => database.writeString(key, value);

  @override
  Future<void> remove(KeyValueDatabase database) => database.remove(key);
}

final class KeyValueColumnInt extends KeyValueColumn<int> {
  const KeyValueColumnInt(super.key);

  @override
  Future<int?> read(KeyValueDatabase database) => database.getInteger(key);

  @override
  Future<void> write(KeyValueDatabase database, int value) => database.writeInteger(key, value);

  @override
  Future<void> remove(KeyValueDatabase database) => database.remove(key);
}

final class KeyValueColumnDouble extends KeyValueColumn<double> {
  const KeyValueColumnDouble(super.key);

  @override
  Future<double?> read(KeyValueDatabase database) => database.getDouble(key);

  @override
  Future<void> write(KeyValueDatabase database, double value) => database.writeDouble(key, value);

  @override
  Future<void> remove(KeyValueDatabase database) => database.remove(key);
}

final class KeyValueColumnBool extends KeyValueColumn<bool> {
  const KeyValueColumnBool(super.key);

  @override
  Future<bool?> read(KeyValueDatabase database) => database.getBoolean(key);

  @override
  Future<void> write(KeyValueDatabase database, bool value) => database.writeBoolean(key, value);

  @override
  Future<void> remove(KeyValueDatabase database) => database.remove(key);
}
