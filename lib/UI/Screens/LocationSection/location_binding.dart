import 'package:get/get.dart';
import 'package:whetherapp/UI/Screens/LocationSection/location_controller.dart';


class LocationBinding extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => LocationController());
  }
}
