class MaterIGrammar {
  int id;
  String title;
  String description;
  String file; // Use a list to store multiple files

  MaterIGrammar({
    required this.id,
    required this.title,
    required this.description,
    required this.file,
  });

  factory MaterIGrammar.fromJson(Map<String, dynamic> json) {
    return MaterIGrammar(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'salah',
      description: (json['description'] ?? 'salah').replaceAll('\\n', '\n'),
      file: json['file'] ?? 'salah',
    );
  }

  static List<MaterIGrammar> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => MaterIGrammar.fromJson(json)).toList();
  }
}
