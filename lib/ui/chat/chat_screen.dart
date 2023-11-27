import 'package:farmer/ui/widgets/chat_container.dart';
import 'package:farmer/ui/widgets/global_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverToBoxAdapter(
                child: GlobalTextField(
                  hintText: 'Search',
                  suffixIcon: IconButton(
                    onPressed: () {
                      _getFromCamera();
                    },
                    icon: const Icon(Icons.camera_alt),
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 15.h)),
            const SliverToBoxAdapter(
              child: Divider(color: Colors.black, height: 1),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Tavsiyalar",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  const ColoredBox(
                    color: Colors.black,
                    child: SizedBox(height: 25, width: 1),
                  ),
                  Text(
                    "Siz uchun",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: Divider(color: Colors.black, height: 1),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 15.h)),
            const SliverToBoxAdapter(child: ChatContainer()),
            SliverToBoxAdapter(child: SizedBox(height: 5.h)),
            const SliverToBoxAdapter(
              child: Divider(color: Colors.black, height: 1),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 5.h)),
            const SliverToBoxAdapter(child: ChatContainer()),
            SliverToBoxAdapter(child: SizedBox(height: 5.h)),
            const SliverToBoxAdapter(
              child: Divider(color: Colors.black, height: 1),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20.h)),
          ],
        ),
      ),
    );
  }

  Future<void> _getFromCamera() async {
    XFile? xFile = await picker.pickImage(source: ImageSource.camera);
    if (xFile != null) {}
  }
}
