class materIReading {
  int id;
  String title;
  String description;
  String file;

  materIReading({required this.id, required this.title, required this.description, required this.file});

  factory materIReading.fromJson(Map<String, dynamic> json) {
    return materIReading(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'salah',
      description: json['description'] ?? 'salah',
      file: json['file'] ?? 'salah'
    );
  }

  static List<materIReading> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => materIReading.fromJson(json)).toList();
  }
}
