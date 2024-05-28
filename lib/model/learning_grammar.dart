class materIGrammar {
  int id;
  String title;
  String description;

  materIGrammar({required this.id, required this.title, required this.description});

  factory materIGrammar.fromJson(Map<String, dynamic> json) {
    return materIGrammar(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'salah',
      description: json['description'] ?? 'salah',
    );
  }

  static List<materIGrammar> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => materIGrammar.fromJson(json)).toList();
  }
}
