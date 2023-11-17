
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Commons/app_routes.dart';
import 'package:whetherapp/Infrastructure/Location/location_permission.dart';



class MapController extends GetxController {
  Position? position;
  Placemark place = Placemark();
@override
  void onInit() {
  getGeoLocationPosition().then((value) {
    position = value;
   update();
    });
    super.onInit();
  }

}
