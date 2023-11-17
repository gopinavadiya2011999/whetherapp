
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Commons/app_routes.dart';
import 'package:whetherapp/UI/Screens/SplashSection/splash_binding.dart';
import 'package:whetherapp/UI/Screens/SplashSection/splash_screen.dart';
import 'package:whetherapp/UI/Screens/homeSection/home_binding.dart';
import 'package:whetherapp/UI/Screens/homeSection/home_screen.dart';


class AppPages {
  static String initial = RoutesConstants.homeScreen;
  static final routes = [
    GetPage(
      name: RoutesConstants.splashScreen,
      page: () =>   const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RoutesConstants.homeScreen,
      page: () =>   const HomeScreen(),
      binding: HomeBindings(),
    ),

  ];
}
