import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Commons/API/api_methods.dart';
import 'package:whetherapp/Infrastructure/Location/location_permission.dart';
import 'package:whetherapp/Infrastructure/Models/temperature_model.dart';
import 'package:whetherapp/UI/Screens/LocationSection/location_screen.dart';
import 'package:whetherapp/UI/Screens/SettingSection/setting_screen.dart';
import 'package:whetherapp/UI/Screens/WhetherSection/whether_screen.dart';

import '../MapsSection/map_screen.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  int selectedIndex = 0;
  RxBool progress = false.obs;
  TemperatureModel temperatureModel = TemperatureModel();
  List<Widget> widgetOptions = <Widget>[
    const WhetherScreen(),
    const MapScreen(),
    const LocationScreen(),
    const SettingScreen(),
  ];
  Position? position;
  Placemark place = Placemark();

  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }

  @override
  void onInit() {
    progress = true.obs;
    getGeoLocationPosition().then((value) {
      position = value;
      getAddressFromLatLong(position: position!).then((value) {
        place = value;
        Map<String, dynamic> queryParams = {
          'query': place.locality,
          'access_key': 'f93ae0e667589994d4b52863ef690654',
        };

        ApiMethods.getRequest(queryParams).then((value) {
          temperatureModel = value ?? TemperatureModel();
          update();
        });
        progress = false.obs;
        update();
      });
    });
    super.onInit();
  }
}
