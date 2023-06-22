import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionalInformation extends StatelessWidget {
  String wind;
  String humidity;
  String pressure;
  String feels_like;


   AdditionalInformation(
      {super.key,
      required this.humidity,
      required this.feels_like,
      required this.pressure,

      required this.wind});
TextStyle titlefont= TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold);
TextStyle infofont= TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      padding: EdgeInsets.all(10.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Wind",
                    style: titlefont

                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                      "Pressure",
                      style: titlefont

                  ),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '$wind',
                    style: infofont

                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                      "$pressure",
                      style: infofont

                  ),


                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Humidity",
                    style: titlefont

                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                      "Feels Like",
                      style: titlefont

                 ),

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$humidity",
                    style: infofont

                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                      "$feels_like",
                      style: infofont

                  )

                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
