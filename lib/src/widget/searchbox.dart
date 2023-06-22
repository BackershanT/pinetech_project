import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinetech_project/src/colors/colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Container(
                height: 25.h,
                width: 25.w,
                decoration: BoxDecoration(
                    color: AppTheme.colors.white,
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Icon(Icons.search),
              ))
        ],
      ),
    );
  }
}
