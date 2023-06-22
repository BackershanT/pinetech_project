import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinetech_project/src/colors/colors.dart';

class CurrentWeather extends StatelessWidget {
  IconData icon;
  String temp;
  String location;
  CurrentWeather(
      {super.key,
      required this.location,
      required this.temp,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppTheme.colors.orange,
          size: 64.sp,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          temp,
          textAlign:TextAlign.center,
          style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold, color: AppTheme.colors.white),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(location,textAlign:TextAlign.center,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),)
        
      ],
    ));
  }
}
