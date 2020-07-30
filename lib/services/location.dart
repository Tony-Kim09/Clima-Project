import 'package:geolocator/geolocator.dart';

class Location {
  double mLatitude;
  double mLongitude;

  //Use Asynchronous call to Geolocator to obtain a low accuracy of user location
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      mLatitude = position.latitude;
      mLongitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
