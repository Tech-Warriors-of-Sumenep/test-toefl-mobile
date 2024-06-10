class MaterIReading {
  int id;
  String title;
  String description;
  List<Soal> soalList;

  MaterIReading({
    required this.id,
    required this.title,
    required this.description,
    required this.soalList,
  });

  factory MaterIReading.fromJson(Map<String, dynamic> json) {
    return MaterIReading(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'salah',
      description: json['description'] ?? 'salah',
      soalList: Soal.fromJsonList(json['contoh_soal']),
    );
  }

  static List<MaterIReading> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => MaterIReading.fromJson(json)).toList();
  }
}

class Soal {
  int id;
  int materiReadingId;
  String text;
  String? file;
  List<Jawaban> jawabanList;

  Soal({
    required this.id,
    required this.materiReadingId,
    required this.text,
    this.file,
    required this.jawabanList,
  });

  factory Soal.fromJson(Map<String, dynamic> json) {
    return Soal(
      id: json['id'] ?? 0,
      materiReadingId: json['materi_id'] ?? 0,
      text: json['soal'] ?? '', 
      file: json['file'],
      jawabanList: Jawaban.fromJsonList(json['contoh_jawaban']), 
    );
  }

  static List<Soal> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Soal.fromJson(json)).toList();
  }
}

class Jawaban {
  int id;
  int soalId;
  String text;

  Jawaban({
    required this.id,
    required this.soalId,
    required this.text,
  });

  factory Jawaban.fromJson(Map<String, dynamic> json) {
    return Jawaban(
      id: json['id'] ?? 0,
      soalId: json['contoh_soal_id'] ?? 0, 
      text: json['name'] ?? '', 
    );
  }

  static List<Jawaban> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Jawaban.fromJson(json)).toList();
  }
}
