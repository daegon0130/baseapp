class UpdateInfo {
  final int id;
  final String version;
  final String appId;
  final bool isForce;
  final String content;
  final DateTime createdAt;
  final String? appstoreUrl;
  final String? playstoreUrl;

  UpdateInfo({
    required this.id,
    required this.version,
    required this.appId,
    required this.isForce,
    required this.content,
    required this.createdAt,
    this.appstoreUrl,
    this.playstoreUrl,
  });

  factory UpdateInfo.fromJson(Map<String, dynamic> json) {
    return UpdateInfo(
      id: json['id'] as int,
      version: json['version'] as String,
      appId: json['app_id'] as String,
      isForce: json['is_force'] as bool,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at']),
      appstoreUrl: json['appstore_url'] as String?,
      playstoreUrl: json['playstore_url'] as String?,
    );
  }
}
