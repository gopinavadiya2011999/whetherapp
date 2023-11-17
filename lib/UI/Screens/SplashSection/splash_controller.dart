
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Commons/app_routes.dart';



class SplashController extends GetxController with GetSingleTickerProviderStateMixin {


  late AnimationController animationController;

  late Animation<double> scaleAnimation;

  @override
  void onClose() {
   // animationController.dispose();
    super.onClose();
  }

  @override
   void onInit()  {

    // animationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 1500),
    // )..repeat(reverse: true);
    //
    // scaleAnimation = Tween(begin: 1.2, end: 1.5).animate(animationController)
    //   ..addListener(() {
    //     update();
    //   });

    moveToNext();
    super.onInit();
  }

  moveToNext()  {

    Get.offAllNamed(RoutesConstants.homeScreen);

  }
}
