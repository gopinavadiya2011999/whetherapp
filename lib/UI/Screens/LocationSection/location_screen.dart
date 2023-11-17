import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'location_controller.dart';

class LocationScreen extends GetView<LocationController> {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<LocationController>(
      init: LocationController(),
      builder: (locationController) {
        return Scaffold(
            backgroundColor: ThemeColors.primaryText(context),
            body: locationController.position!=null?SafeArea(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                     "Country: ${locationController.place.country??""}",
                      textAlign: TextAlign.start,
                      style:  TextStyle(fontWeight: FontWeight.w400, color: ThemeColors.primarySurface(context),
                          letterSpacing: 0.5, fontSize: 20),
                    ), Text(
                     "City: ${locationController.place.country??""}",
                      textAlign: TextAlign.start,
                      style:  TextStyle(fontWeight: FontWeight.w400, color: ThemeColors.primarySurface(context),
                          letterSpacing: 0.5, fontSize: 20),
                    ),
                    Text(
                      "Locality: ${locationController.place.locality??""}",
                      textAlign: TextAlign.start,
                      style:  TextStyle(fontWeight: FontWeight.w400, color: ThemeColors.primarySurface(context),
                          letterSpacing: 0.5, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ):Center(child: CircularProgressIndicator( color: ThemeColors.primarySurface(context),)));
      }
    );
  }
}
