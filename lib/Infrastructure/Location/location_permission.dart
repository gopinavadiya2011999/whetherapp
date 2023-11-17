
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';


Future<Position> getGeoLocationPosition() async {
  bool serviceEnabled;
  LocationPermission permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    await Geolocator.openLocationSettings();


    return Future.error("Location is Disable");
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {


      return Future.error("Permission Denied");
    }
  }
  if (permission == LocationPermission.deniedForever) {

    return Future.error("Permission Not Accessible",
    );
  }

  return await Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.bestForNavigation,
  );
}

//get current address
Future<Placemark> getAddressFromLatLong({
  required Position position,
}) async {
  List<Placemark> placeMarks =
  await placemarkFromCoordinates(position.latitude, position.longitude);
  Placemark place = placeMarks[0];

  return place;
}
