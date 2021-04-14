import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:weather_forecast_app/utilities/constants.dart';
import 'package:weather_icons/weather_icons.dart';

class OldModeHour extends StatelessWidget {
  OldModeHour(
      {@required this.temperature, @required this.hour, @required this.icon});

  final int temperature;
  final String hour;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          color: Colors.grey[900],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              hour,
              style: kHourForecastOldMode,
            ),
            BoxedIcon(
              icon,
              size: 50.0,
            ),
            Text(
              '${temperature.toString()}°',
              style: kHourForecastOldMode,
            ),
          ],
        ));
  }
}
