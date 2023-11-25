import 'package:farmer/cubit/tabs_box_cubit.dart';
import 'package:farmer/ui/chat/chat_screen.dart';
import 'package:farmer/ui/home/home_screen.dart';
import 'package:farmer/ui/knowledge/knowledge_screen.dart';
import 'package:farmer/ui/sale/sale_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  static List<Widget> screens = [];

  @override
  void initState() {
    screens = [
      const HomeScreen(),
      const SaleScreen(),
      const ChatScreen(),
      const KnowledgeScreen(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<TabsBoxCubit>().state,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF2AAA8A),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ASOSIY'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'SAVDO'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'MULOQOT'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'BILIMLAR'),
        ],
        currentIndex: context.watch<TabsBoxCubit>().state,
        onTap: context.read<TabsBoxCubit>().changeIndex,
      ),
    );
  }
}
