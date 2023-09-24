import 'package:get/get.dart';
import 'package:pokedex_assignment/data/models/pokemon_collection.dart';
import 'package:pokedex_assignment/data/repositories/pokemon.dart';

class HomeScreenController extends GetxController {
  final PokemonRepository pokemonRepository;
  HomeScreenController({
    required this.pokemonRepository,
  });
  // Obx Variables -------------------------------------------------------------
  RxList<PokemonCollection> pokemonCollections = RxList();

  // Variables -----------------------------------------------------------------
  // Functions -----------------------------------------------------------------
  @override
  void onInit() {
    loadPokemonCollection();
    super.onInit();
  }

  Future<void> loadPokemonCollection() async {
    pokemonCollections.value = await pokemonRepository.listPokemonCollections();
  }
}
