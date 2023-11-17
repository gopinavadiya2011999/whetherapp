import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.put(SplashController());
    return Scaffold(
        body: Center(
          child: AnimatedBuilder(
              animation: controller.scaleAnimation,
              builder: (context, child) {
                return /*Transform.scale(
                  scale: controller.scaleAnimation.value,
                  child:*/ const Icon(Icons.wheelchair_pickup_outlined);
               // );
              },
          ),
        ));
  }
}
