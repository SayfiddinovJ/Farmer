import 'package:farmer/ui/widgets/global_text_field.dart';
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
            const SliverToBoxAdapter(
              child: GlobalTextField(
                hintText: 'Search',
                suffixIcon: Icon(Icons.camera_alt),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 45.h)),
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
                    child: const Stack(
                      children: [],
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
