import 'package:flutter/material.dart';
import 'package:flutter_animated_loadingkit/flutter_animated_loadingkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinetech_project/src/colors/colors.dart';
import 'package:pinetech_project/src/model/weather_model.dart';
import 'package:pinetech_project/src/services/weather_api_services.dart';
import 'package:pinetech_project/src/widget/additional_information.dart';
import 'package:pinetech_project/src/widget/current_weather.dart';
import 'package:pinetech_project/src/widget/searchbox.dart';
import 'package:pinetech_project/src/widget/weekly_forecast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiServices client = WeatherApiServices();
  WeatherModel? data;


  Future<void> getData() async {
    data = await client.getCurrentWeather('Kozhikode');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppTheme.colors.sky,
            body: FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SearchBox(),
                        SizedBox(
                          height: 50.h,
                        ),
                        CurrentWeather(
                            icon: Icons.wb_sunny_rounded,
                            location: "${data!.cityName}\n${data!.countryname}",
                            temp: '${data!.temp}° '),
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          'Additional Information',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        AdditionalInformation(
                          feels_like: '${data!.feels_like}',
                          humidity: '${data!.humidity}',
                          pressure: '${data!.pressure}',
                          wind: '${data!.wind}',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Weekly Forecast',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: double.infinity.w,
                            color: AppTheme.colors.white,
                            height: 200.h,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  WeeklyForecast(
                                    day: 'Day 1',
                                    temp: '301.5',
                                    feels_like: '310',
                                    humidity: '5.75',
                                    pressure: '1000',
                                    wind: '5.95',
                                  ),
                                  WeeklyForecast(
                                    day: 'Day 2',
                                    temp: '280.5',
                                    feels_like: '300',
                                    humidity: '5.89',
                                    pressure: '1001',
                                    wind: '5.75',
                                  ),
                                  WeeklyForecast(
                                    day: 'Day 3',
                                    temp: '295.0',
                                    feels_like: '310',
                                    humidity: '69',
                                    pressure: '1010',
                                    wind: '6.00',
                                  ),
                                  WeeklyForecast(
                                    day: 'Day 4',
                                    temp: '300.0',
                                    feels_like: '400',
                                    humidity: '70',
                                    pressure: '1003',
                                    wind: '5.80',
                                  ),
                                  WeeklyForecast(
                                    day: 'Day 5',
                                    temp: '305.0',
                                    feels_like: '300',
                                    humidity: '67',
                                    pressure: '1005',
                                    wind: '5.82',
                                  ),
                                ],
                              ),
                            ))
                      ],
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(
                      child: AnimatedLoadingSpinner(
                        size: Size(50.w, 50.h),
                        delay: Duration(microseconds: 400),
                        speed: Duration(microseconds: 100),
                      ),
                    );
                  }
                  return Container();
                })));
  }
}
