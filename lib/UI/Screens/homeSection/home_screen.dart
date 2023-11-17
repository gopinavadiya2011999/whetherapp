import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Constant/app_constant.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: ThemeColors.primaryText(context),
          body: Center(
            child: controller.widgetOptions.elementAt(controller.selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
              showUnselectedLabels: true,
              backgroundColor: ThemeColors.primaryText(context),
              selectedItemColor: ColorConstants.blue,
              unselectedItemColor: ThemeColors.secondaryText(context),
              items:  <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: const Icon(Icons.home_outlined),
                    label: AppConstant.home.tr,
                    // backgroundColor: Colors.blue
                ),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.map_outlined),
                    label: AppConstant.maps.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.location_on_outlined),
                  label: AppConstant.location.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings_outlined),
                  label: AppConstant.setting.tr,
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.selectedIndex,
              // selectedItemColor: Colors.black,
              iconSize: 24,
              onTap:controller.onItemTapped,
              elevation: 5
          ), );
      }
    );
  }
}
