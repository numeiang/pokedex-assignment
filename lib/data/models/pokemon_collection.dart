import 'dart:convert';

class PokemonCollection {
  int id;
  String name;
  String url;
  PokemonCollection({
    required this.id,
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'url': url});

    return result;
  }

  factory PokemonCollection.fromMap(Map<String, dynamic> map) {
    return PokemonCollection(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      url: map['url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonCollection.fromJson(String source) =>
      PokemonCollection.fromMap(json.decode(source));
}
