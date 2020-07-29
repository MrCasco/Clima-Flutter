import 'package:geolocator/geolocator.dart';

class Location{

  double lon, lat;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lat = position.latitude;
      lon = position.longitude;
    }
    catch(e) {
      print(e);
    }
  }
}