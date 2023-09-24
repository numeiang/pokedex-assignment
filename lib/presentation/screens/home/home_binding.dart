import 'package:get/get.dart';
import 'package:pokedex_assignment/presentation/screens/home/home_screen_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeScreenController(pokemonRepository: Get.find()),
    );
  }
}
