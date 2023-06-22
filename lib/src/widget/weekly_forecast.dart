import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinetech_project/src/colors/colors.dart';

class WeeklyForecast extends StatelessWidget {
  String day;
  String temp;
  String wind;
  String humidity;
  String pressure;
  String feels_like;

  WeeklyForecast(
      {super.key,
      required this.day,
      required this.temp,
      required this.wind,
      required this.pressure,
      required this.humidity,
      required this.feels_like});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.sp),
        child: Card(
          elevation: 5,
          shadowColor: AppTheme.colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.sp)),
          child: Container(
              height: 160.h,
              width: 150.w,
              decoration: BoxDecoration(
                  color: AppTheme.colors.sky,
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      day,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          'Temp:$temp',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Wind :$wind',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Pressure:$pressure',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Humidity :$humidity',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'FeelsLike :$feels_like',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ));
  }
}
