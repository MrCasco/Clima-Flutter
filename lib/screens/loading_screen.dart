import 'package:flutter/material.dart';
import '../services/location.dart';
import '../services/networking.dart';

const apiKey = '9ce174c49a88358136b7fe9257143338';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double lat, lon;

  void getLocationData() async {
    Location loc = Location();
    await loc.getCurrentLocation();
    lon = loc.lon;
    lat = loc.lat;
    NetworkHelper net = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&apikey=$apiKey');

    var weatherData = await net.getData();
    print(weatherData);
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
