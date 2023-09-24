import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex_assignment/data/models/pokemon.dart';
import 'package:pokedex_assignment/data/models/pokemon_collection.dart';

class PokemonRepository {
  Future<List<PokemonCollection>> listPokemonCollections(
      {int limit = 100}) async {
    final response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=$limit}'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<PokemonCollection> pokemonCollections = [];
      var id = 1;
      for (final pokemonRaw in data["results"]) {
        pokemonRaw['id'] = id;
        pokemonCollections.add(PokemonCollection.fromMap(pokemonRaw));
        id += 1;
      }
      return pokemonCollections;
    } else {
      throw Exception('Failed to load pokemonCollections');
    }
  }

  Future<Pokemon> getPokemonByUrl({required String url}) async {
    // TODO! : assignment 1, implement this
    // load pokemon
    throw Exception('not implemented');
  }
}
