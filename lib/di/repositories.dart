import 'package:get/get.dart';
import 'package:pokedex_assignment/data/repositories/pokemon.dart';

Future<void> initRepositories() async {
  final pokemonRepository = PokemonRepository();
  await pokemonRepository.listPokemonCollections();
  Get.put<PokemonRepository>(
    pokemonRepository,
    permanent: true,
  );
}
