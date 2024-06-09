class Category {
  int id;
  String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}

class ContohSoal {
  int id;
  int materiId;
  String soal;
  List<dynamic> contohJawaban;

  ContohSoal({
    required this.id,
    required this.materiId,
    required this.soal,
    required this.contohJawaban,
  });

  factory ContohSoal.fromJson(Map<String, dynamic> json) {
    return ContohSoal(
      id: json['id'],
      materiId: json['materi_id'],
      soal: json['soal'],
      contohJawaban: json['contoh_jawaban'] ?? [],
    );
  }

  static List<ContohSoal> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => ContohSoal.fromJson(json)).toList();
  }
}

class Payload {
  int id;
  String description;
  List<ContohSoal> contohSoal;

  Payload({
    required this.id,
    required this.description,
    required this.contohSoal,
  });

  factory Payload.fromJson(Map<String, dynamic> json) {
    return Payload(
      id: json['id'],
      description: json['description'],
      contohSoal: ContohSoal.fromJsonList(json['contoh_soal']),
    );
  }

  static List<Payload> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Payload.fromJson(json)).toList();
  }
}
