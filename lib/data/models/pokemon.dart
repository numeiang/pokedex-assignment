import 'dart:convert';

class Pokemon {
  String name;
  Sprites sprites;
  int weight;
  int height;
  Pokemon({
    required this.name,
    required this.sprites,
    required this.weight,
    required this.height,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'sprites': sprites.toMap()});
    result.addAll({'weight': weight});
    result.addAll({'height': height});

    return result;
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      name: map['name'] ?? '',
      sprites: Sprites.fromMap(map['sprites']),
      weight: map['weight']?.toInt() ?? 0,
      height: map['height']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source));
}

class Sprites {
  String frontDefault;
  Sprites({
    required this.frontDefault,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'front_default': frontDefault});

    return result;
  }

  factory Sprites.fromMap(Map<String, dynamic> map) {
    return Sprites(
      frontDefault: map['front_default'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Sprites.fromJson(String source) =>
      Sprites.fromMap(json.decode(source));
}
