import 'dart:developer';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/features/Homepage/home_page_Screen.dart';
import 'package:finance_ui/features/mycardpage/widgets/mycard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;
  List<Widget> screen = [
    const HomeScreen(),
    const MycardScreen(),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screen[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
            log(value.toString()); // logging the tapped index
          },
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: "Home",
            ),

            const BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.sp,
                height: 48.sp,
                decoration: BoxDecoration(
                  color: AppCorlors.primarycolor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(Icons.add, color: Colors.white, size: 30.sp),
              ),
              label: "Add",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.card_membership_outlined, size: 30),
              label: "My Card",
            ),

            const BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
