import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Constant/app_constant.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'package:whetherapp/Infrastructure/Constant/image_constant.dart';
import 'package:whetherapp/UI/Screens/homeSection/home_controller.dart';

class AddInfoDetail extends StatelessWidget {
  AddInfoDetail({super.key});

  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppConstant.addInfo.tr,
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.w600, color: ThemeColors.primarySurface(context), letterSpacing: 0.5, fontSize: 20),
        ),
        const SizedBox(height: 15),
        GridView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 4 / 2.5),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), border: Border.all(color: ThemeColors.secondaryText(context).withOpacity(0.3))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(index==0?ImageConstant.wind:index==1?ImageConstant.nightMode:ImageConstant.contrast,
                      width: 30, height: 30),
                  const SizedBox(height: 5),
                  Text(
                    index == 1
                        ? "HUMIDITY"
                        : index == 0
                            ? "WIND"
                            : "PRESSURE",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w400, color: ThemeColors.secondaryText(context), letterSpacing: 0.5, fontSize: 16),
                  ),
                  Text(
                    index == 1
                        ? "${homeController.temperatureModel.current!.humidity} m/h"
                        : index == 0
                            ? "${homeController.temperatureModel.current!.windSpeed} m/h"
                            : homeController.temperatureModel.current!.pressure.toString(),
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w400, color: ThemeColors.primarySurface(context), letterSpacing: 0.5, fontSize: 18),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
