import 'package:get/get.dart';
import 'package:pokedex_assignment/presentation/screens/[FTName | snakecase]/[FTName | snakecase]_screen_controller.dart';

class [FTName | pascalcase]Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => [FTName | pascalcase]ScreenController(
      ),
    );
  }
}