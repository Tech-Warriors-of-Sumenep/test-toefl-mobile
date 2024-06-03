class TestGrammar {
  int id;
  int categoryId;
  String uuid;
  String title;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  Category category;
  List<Soal> soal;

  TestGrammar({
    required this.id,
    required this.categoryId,
    required this.uuid,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
    required this.soal,
  });

  factory TestGrammar.fromJson(Map<String, dynamic> json) {
    return TestGrammar(
      id: json['id'] ?? 0,
      categoryId: json['category_id'] ?? 0,
      uuid: json['uuid'] ?? '',
      title: json['title'] ?? 'salah',
      description: json['description'] ?? 'salah',
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      category: Category.fromJson(json['category']),
      soal: Soal.fromJsonList(json['soal']),
    );
  }

  static List<TestGrammar> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => TestGrammar.fromJson(json)).toList();
  }
}

class Category {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  Category({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}

class Soal {
  int id;
  int ujianId;
  String soal;
  String? file;
  DateTime createdAt;
  DateTime updatedAt;
  List<Jawaban> jawaban;
  KunciJawaban kunciJawaban;

  Soal({
    required this.id,
    required this.ujianId,
    required this.soal,
    this.file,
    required this.createdAt,
    required this.updatedAt,
    required this.jawaban,
    required this.kunciJawaban,
  });

  factory Soal.fromJson(Map<String, dynamic> json) {
    return Soal(
      id: json['id'] ?? 0,
      ujianId: json['ujian_id'] ?? 0,
      soal: json['soal'] ?? '',
      file: json['file'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      jawaban: Jawaban.fromJsonList(json['jawaban']),
      kunciJawaban: KunciJawaban.fromJson(json['kunci_jawaban']),
    );
  }

  static List<Soal> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Soal.fromJson(json)).toList();
  }
}

class Jawaban {
  int id;
  int soalId;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  Jawaban({
    required this.id,
    required this.soalId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Jawaban.fromJson(Map<String, dynamic> json) {
    return Jawaban(
      id: json['id'] ?? 0,
      soalId: json['soal_id'] ?? 0,
      name: json['name'] ?? '',
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  static List<Jawaban> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Jawaban.fromJson(json)).toList();
  }
}

class KunciJawaban {
  int id;
  int soalId;
  int jawabanId;
  DateTime createdAt;
  DateTime updatedAt;
  Jawaban jawaban;

  KunciJawaban({
    required this.id,
    required this.soalId,
    required this.jawabanId,
    required this.createdAt,
    required this.updatedAt,
    required this.jawaban,
  });

  factory KunciJawaban.fromJson(Map<String, dynamic> json) {
    return KunciJawaban(
      id: json['id'] ?? 0,
      soalId: json['soal_id'] ?? 0,
      jawabanId: json['jawaban_id'] ?? 0,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      jawaban: Jawaban.fromJson(json['jawaban']),
    );
  }
}
