import 'package:farmer/ui/profile/profile_screen.dart';
import 'package:farmer/ui/widgets/global_text_field.dart';
import 'package:farmer/ui/widgets/weather_container.dart';
import 'package:farmer/ui/widgets/zoom_tap_button.dart';
import 'package:farmer/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
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
            SliverToBoxAdapter(child: SizedBox(height: 10.h)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 225.h,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(AppImages.tractor),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 19.h)),
            const SliverToBoxAdapter(child: WeatherContainer()),
            SliverToBoxAdapter(child: SizedBox(height: 45.h)),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ZoomTapButton(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            right: 6,
                            left: 6,
                            bottom: 24,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.w, vertical: 2.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                color: const Color(0xFFA0BB97),
                              ),
                              child: Center(
                                child: Text(
                                  texts[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: 4, // Number of grid items
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
  AppImages.hotRoom,
  AppImages.poultry,
  AppImages.cattleBreeding,
  AppImages.floriculture,
];

List<String> texts = [
  'Issiq-honalar',
  'Parrandachilik',
  'Qoramolchilik',
  'Gulchilik',
];
