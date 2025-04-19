class SettingsModel {
  const SettingsModel({
    required this.notificationsEnabled,
  });

  final bool notificationsEnabled;

  factory SettingsModel.fromJson(Map<String, Object?> json) {
    return SettingsModel(
      notificationsEnabled: json['notificationsEnabled'] as bool,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'notificationsEnabled': notificationsEnabled,
    };
  }
}