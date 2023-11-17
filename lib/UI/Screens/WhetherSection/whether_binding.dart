import 'package:get/get.dart';

import 'whether_controller.dart';

class WhetherBinding extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => WhetherController());
  }
}
