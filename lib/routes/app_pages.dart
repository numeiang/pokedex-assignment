import 'package:get/get.dart';
import 'package:pokedex_assignment/presentation/screens/home/home_binding.dart';
import 'package:pokedex_assignment/presentation/screens/home/home_screen.dart';
import 'package:pokedex_assignment/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const Transition pageTransition = Transition.cupertino;

  static const String initialRoute = AppRoutes.home;

  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
      transition: pageTransition,
      binding: HomeBinding(),
    ),
    // TODO! : assignment 1, implement this
    // add a new GetPage
  ];
}
