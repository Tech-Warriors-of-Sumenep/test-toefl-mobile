class test_grammar {
  int id;
  String title;
  String description;

test_grammar({required this.id, required this.title, required this.description});

  factory test_grammar.fromJson(Map<String, dynamic> json) {
    return test_grammar(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'salah',
      description: json['description'] ?? 'salah',
    );
  }

  static List<test_grammar> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => test_grammar.fromJson(json)).toList();
  }
}
