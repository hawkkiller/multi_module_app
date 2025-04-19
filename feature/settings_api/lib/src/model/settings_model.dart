class SettingsModel {
  const SettingsModel({required this.notificationsEnabled});

  final bool notificationsEnabled;

  factory SettingsModel.initial() {
    return const SettingsModel(notificationsEnabled: true);
  }

  factory SettingsModel.fromJson(Map<String, Object?> json) {
    return SettingsModel(notificationsEnabled: json['notificationsEnabled'] as bool);
  }

  Map<String, Object?> toJson() {
    return {'notificationsEnabled': notificationsEnabled};
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsModel && other.notificationsEnabled == notificationsEnabled;
  }

  @override
  int get hashCode => notificationsEnabled.hashCode;
}
