import 'package:farmer/cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, int>(
      builder: (context, state) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          scrollDirection: Axis.horizontal,
          children: [
            getCategory('Mevalar', state == 0, 0, context),
            SizedBox(width: 15.w),
            getCategory('Traktorlar', state == 1, 1, context),
            SizedBox(width: 15.w),
            getCategory('Dorilar', state == 2, 2, context),
            SizedBox(width: 15.w),
            getCategory('Poliz ekinlari', state == 3, 3, context),
          ],
        );
      },
    );
  }

  Widget getCategory(
    String name,
    bool isActive,
    int index,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        context.read<CategoryCubit>().changeIndex(index);
      },
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          Visibility(
            visible: isActive,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(3.r),
              ),
              height: 5.h,
              width: 40.w,
            ),
          ),
        ],
      ),
    );
  }
}
