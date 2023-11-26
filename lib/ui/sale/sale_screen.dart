import 'package:farmer/ui/widgets/categories_container.dart';
import 'package:farmer/ui/widgets/global_text_field.dart';
import 'package:farmer/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2AAA8A),
        title: const Text('Dehqonchasiga'),
        titleTextStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w800,
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2AAA8A),
              Color(0x43988369),
            ],
          ),
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: GlobalTextField(
                hintText: 'Search',
                suffixIcon: Icon(Icons.camera_alt),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  "Savdo",
                  style: TextStyle(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 15.h)),
            SliverToBoxAdapter(
              child: Container(
                height: 56.h,
                padding: EdgeInsets.symmetric(vertical: 13.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: const Center(child: CategoriesContainer()),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 25.h)),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13.r),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              texts[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Expanded(
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 6, // Number of grid items
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 19.h)),
          ],
        ),
      ),
    );
  }
}

List<String> images = [
  AppImages.anjir,
  AppImages.nok,
  AppImages.behi,
  AppImages.malina,
  AppImages.shaftoli,
  AppImages.giloz,
];
List<String> texts = [
  'Anjir',
  'Nok',
  'Behi',
  'Malina',
  'Shaftoli',
  'Gilos',
];
