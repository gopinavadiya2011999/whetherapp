import 'package:get/get.dart';
import 'package:whetherapp/UI/Screens/LocationSection/location_controller.dart';
import 'package:whetherapp/UI/Screens/MapsSection/map_controller.dart';

import 'home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => HomeController());
      Get.lazyPut(() => MapController());
      Get.lazyPut(() => LocationController());
  }
}
