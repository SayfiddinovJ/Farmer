import 'package:farmer/ui/widgets/zoom_tap_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksTile extends StatelessWidget {
  const BooksTile({super.key, required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ZoomTapButton(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: const Color(0xFF918E8E),
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 80.h,
              width: 114.w,
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
