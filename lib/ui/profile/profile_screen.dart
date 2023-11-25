import 'package:farmer/ui/widgets/global_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A846E),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA3C7BC),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 30.w,
            color: const Color(0xFFFFFFFF),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Acount",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
            color: const Color(0xFF000000),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xFFA3C7BC),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(19.r),
                bottomRight: Radius.circular(19.r),
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 128.w,
                    ),
                    Positioned(
                      right: 5,
                      bottom: 5,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                        size: 36.w,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF2A846E),
                    Color(0x43988369),
                  ],
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                children: [
                  SizedBox(height: 40.h),
                  const GlobalTextField(hintText: 'Ism:'),
                  SizedBox(height: 44.h),
                  const GlobalTextField(hintText: 'Familya:'),
                  SizedBox(height: 44.h),
                  const GlobalTextField(
                    hintText: 'Tel:',
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 44.h),
                  const GlobalTextField(
                    hintText: 'Email:',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 44.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
