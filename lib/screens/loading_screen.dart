import 'package:flutter/material.dart';
import '../services/location.dart';

Location loc = Location();

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async {
    await loc.getCurrentLocation();
    print(loc.lon);
    print(loc.lat);
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
