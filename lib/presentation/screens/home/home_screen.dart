import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_assignment/presentation/components/space/v_space.dart';
import 'package:pokedex_assignment/presentation/screens/home/home_screen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (final pokemonCollection
                    in controller.pokemonCollections) ...[
                  GestureDetector(
                    onTap: () async {
                      // TODO! : assignment 1, implement this
                      // navigate to pokemon detail screen
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(8)),
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            getImageURI(pokemonCollection.id),
                            height: 60,
                          ),
                          const VSpace(8),
                          Text(
                            pokemonCollection.name,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const VSpace(24),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String getImageURI(id) {
  return ('https://raw.githubusercontent.com/PokeAPI/sprites/master/'
      'sprites/pokemon/other/official-artwork/$id.png');
}
