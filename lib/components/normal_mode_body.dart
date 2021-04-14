import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class NormalModeBody extends StatelessWidget {
//
//   NormalModeBody({this.cityName, this.message, this.latitude, this.longitude, this.temperature, this.backgroundImage, this.weather});
//
//   final int temperature;
//   final String backgroundImage;
//   final String cityName;
//   final String message;
//   final String latitude;
//   final String longitude;
//   final WeatherModel weather;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('$backgroundImage'),
//           fit: BoxFit.cover,
//           colorFilter: ColorFilter.mode(
//               Colors.white.withOpacity(0.8), BlendMode.dstATop),
//         ),
//       ),
//       constraints: BoxConstraints.expand(),
//       child: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 FlatButton(
//                   onPressed: () async {
//                     var weatherData =
//                     await weather.getLocationWeather();
//                     updateUI(weatherData);
//
//                     var weekForecast = await weather.getWeekForecast(
//                         double.parse(latitude),
//                         double.parse(longitude));
//                     updateWeekForecastUI(weekForecast);
//                   },
//                   child: Icon(
//                     Icons.near_me,
//                     size: 50.0,
//                   ),
//                 ),
//                 FlatButton(
//                   onPressed: () async {
//                     currentCity = cityName;
//                     var typedName = await Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                           return CityScreen();
//                         }));
//                     if (typedName != null) {
//                       print(typedName);
//                       var weatherData =
//                       await weather.getCityWeather(typedName);
//                       updateUI(weatherData);
//
//                       var weekForecast = await weather.getWeekForecast(
//                           double.parse(latitude),
//                           double.parse(longitude));
//                       updateWeekForecastUI(weekForecast);
//                     }
//                   },
//                   child: Icon(
//                     Icons.location_city,
//                     size: 50.0,
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           '$cityName',
//                           style: kCityNameTextStyle,
//                         ),
//                         Text(
//                           '$longitude°N  $latitude°E',
//                           style: kCoordsTextStyle,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 15.0),
//               child: Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.baseline,
//                     textBaseline: TextBaseline.alphabetic,
//                     children: <Widget>[
//                       Text(
//                         '$temperature°',
//                         style: kTempTextStyle,
//                       ),
//                       Text(
//                         '$message',
//                         style: kButtonTextStyle,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Column(
//               children: [
//                 Divider(
//                   thickness: 1.0,
//                   color: Colors.white30,
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       for (var i = 0; i < 24; i++)
//                         FutureHourColumn(
//                           temperature: hourTemperatures[i],
//                           hour: hours[i],
//                           icon: hourConditionIcons[i],
//                         ),
//                     ],
//                   ),
//                 ),
//                 Divider(
//                   thickness: 1.0,
//                   color: Colors.white30,
//                 ),
//                 for (var i = 0; i < 7; i++)
//                   FutureWeekDayRow(
//                     weekDay: weekDays[i],
//                     icon: conditionIcons[i],
//                     temperature: weekTemperatures[i].toString(),
//                     minTemperature: minTemperatures[i].toString(),
//                     description: descriptions[i],
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
