import 'package:farmer/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10.w),
            const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person_sharp),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Valixonov Ilyosbek",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "@valioxonov04  • 9 Soat oldin ",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 40.w),
                    const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 100.w,
                    child: Text(
                      "O‘zbekistonda bodring va uzum narxi oshganiga izoh berildi",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 10.w),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 100.w,
                    child: Text(
                      "Ayni kunlarda O‘zbekiston bozorlarida bodring va uzumning narxi keskin ko‘tarilib ketdi. Qishloq xo‘jaligi vazirligi ushbu holat yuzasidan tushuntirish berdi. Vazirlik bodring narxining oshib ketishini ochiq dalalarda yetishtirilgan hosil allaqachon iste’molchilarga yetkazib berilgani va issiqxonalardagi hosilning hali pishib yetilmagani bilan izohlagan. Unga ko‘ra, oldingi yillarda ham noyabr oyi o‘rtalariga kelib bodring narxi o‘sishi kuzatilgan. Jumladan 2021 yilda oldingi oylarga nisbatan noyabrda 1,3 barobarga, 2022 yilda 1,9 barobarga oshgan.",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 10.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      AppImages.anjir,
                      fit: BoxFit.cover,
                      height: 214.h,
                      width: MediaQuery.of(context).size.width - 100.w,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            getRow(Icons.reply),
            getRow(Icons.favorite),
            getRow(Icons.visibility),
          ],
        ),
      ],
    );
  }

  getRow(IconData iconData) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          size: 20.w,
        ),
        Text(
          "+13k",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
