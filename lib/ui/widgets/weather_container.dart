import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.h,horizontal: 17.w),
      decoration: BoxDecoration(
        color: const Color(0xffd9d9d9),
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffd9d9d9).withOpacity(0.5),
            offset: const Offset(4, 3),
            spreadRadius: 3
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            '28.3°',
            style: TextStyle(
              color: const Color(0xff000000),
              fontSize: 37.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.wb_sunny_outlined,
            color: Colors.black,
            size: 45.r,
          ),
        ],
      ),
    );
  }
}
