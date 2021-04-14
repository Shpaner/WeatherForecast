import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecast_app/utilities/constants.dart';
import 'package:weather_icons/weather_icons.dart';

class OldModeWeekDay extends StatelessWidget {
  OldModeWeekDay(
      {@required this.weekDay,
      @required this.icon,
      @required this.temperature,
      @required this.minTemperature,
      @required this.description});

  final String weekDay;
  final IconData icon;
  final String temperature;
  final String minTemperature;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: Colors.grey[900],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  weekDay,
                  style: kWeekForecastOldMode,
                ),
                Text(
                  '$temperature°',
                  style: kWeekForecastOldMode,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxedIcon(
                  icon,
                  size: 50.0,
                ),
                Text(
                  description,
                  style: kConditionPercentageOldMode,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
