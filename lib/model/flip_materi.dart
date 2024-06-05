class FlipMateri {
  int id;
  int materiId;
  String description;
  String file;

  FlipMateri({
    required this.id,
    required this.materiId,
    required this.description,
    required this.file,
  });

  factory FlipMateri.fromJson(Map<String, dynamic> json) {
    return FlipMateri(
      id: json['id'] ?? 0,
      materiId: json['materi_id'] ?? 0,
      description: json['description'] ?? '',
      file: json['file'] ?? 'salah',
    );
  }

  static List<FlipMateri> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => FlipMateri.fromJson(json)).toList();
  }
}


