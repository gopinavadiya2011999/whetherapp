import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whetherapp/Infrastructure/Constant/color_costant.dart';
import 'map_controller.dart';

class MapScreen extends GetView<MapController> {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.primaryText(context),
        body: Center(
          child: Text(
            "Map Screen",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: ThemeColors.primarySurface(context),
                letterSpacing: 0.5,
                fontSize: 20),
          ),
        ) /*GoogleMap(
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          compassEnabled: false,
          mapToolbarEnabled: false,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          initialCameraPosition:  CameraPosition(
            target: LatLng(20.967, 72.900), zoom: 12),

        )*/
        );
  }
}
