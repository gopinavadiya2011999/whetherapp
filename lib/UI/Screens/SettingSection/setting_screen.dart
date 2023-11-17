import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'setting_controller.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingController>(
        init: SettingController(),
        builder: (controller) {
          return Scaffold(
              backgroundColor: ThemeColors.primaryText(context),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Change Theme",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: ThemeColors.primarySurface(context),
                              letterSpacing: 0.5,
                              fontSize: 20),
                        ),
                        Switch(
                          activeColor: ThemeColors.primarySurface(context),
                          value: controller.isSelected.value,
                          onChanged: (value) {
                            controller.isSelected.value = value;
                            controller.update();
                            if (controller.isSelected.value) {
                              Get.changeThemeMode(ThemeMode.dark);
                            } else {
                              Get.changeThemeMode(ThemeMode.light);
                            }
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ));
        });
  }
}
