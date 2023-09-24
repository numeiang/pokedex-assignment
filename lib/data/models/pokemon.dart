import 'dart:convert';

class Pokemon {
  String name;
  int weight;
  int height;
  Pokemon({
    required this.name,
    required this.weight,
    required this.height,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'weight': weight});
    result.addAll({'height': height});

    return result;
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      name: map['name'] ?? '',
      weight: map['weight']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source));
}
