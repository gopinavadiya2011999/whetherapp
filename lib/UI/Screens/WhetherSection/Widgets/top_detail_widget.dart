import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Constant/app_constant.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'package:whetherapp/Infrastructure/Constant/image_constant.dart';
import 'package:whetherapp/UI/Screens/homeSection/home_controller.dart';

class TopDetailWidget extends StatelessWidget {
  const TopDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {


    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          decoration: ShapeDecoration(
              color: ThemeColors.iconActive.withOpacity(0.8), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: ColorConstants.white,
                  ),
                  const SizedBox(width: 3),
                   Text(
                    controller.temperatureModel.request!.query??"",
                    style: const TextStyle(fontWeight: FontWeight.w400, color: ColorConstants.white, letterSpacing: 0.5, fontSize: 14),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: ColorConstants.white)),
                    child: const Icon(
                      Icons.more_horiz_outlined,
                      size: 20,
                      color: ColorConstants.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.temperatureModel.current!=null?
                        "${controller.temperatureModel.current!.temperature!.toInt().toString()}°":"",
                        textAlign: TextAlign.end,
                        style: const TextStyle(fontWeight: FontWeight.w400, color: ColorConstants.white, fontSize: 50),
                      ),
                       Text(
                        AppConstant.celsius.tr,
                        textAlign: TextAlign.start,
                        style: const TextStyle(fontWeight: FontWeight.w400, color: ColorConstants.white, letterSpacing: 0.5, fontSize: 20),
                      ),
                    ],
                  ),
                  Image.asset(
                    ImageConstant.cloudy,
                    height: 90,
                    width: 90,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 10),
               Text(
                "Sunny with ${controller.temperatureModel.current!=null?
                controller.temperatureModel.current!.humidity!.toInt().toString():""}% humidity",
                textAlign: TextAlign.start,
                style: const TextStyle(fontWeight: FontWeight.w400, color: ColorConstants.white, letterSpacing: 0.5, fontSize: 18),
              ),
            ],
          ),
        );
      }
    );
  }
}
