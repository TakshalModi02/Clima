import 'package:clima/services/location.dart';
import 'package:clima/screens/locating_screen.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/wheather.dart';

var APIkey = '398ca8e7870fb4fcbe629889ae5f327f';
double longitude = 0.0;
double latitude = 0.0;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}


class _LoadingScreenState extends State<LoadingScreen> {

  void getLocationData() async
  {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(weatherData);
    }));
  }

  @override
  void initState() {
    super.initState();
    getLocationData();

  }

  @override
  Widget build(BuildContext context) {


    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
        color:  Colors.black,
          size: 100,
        ),
      ),
    );
  }
}