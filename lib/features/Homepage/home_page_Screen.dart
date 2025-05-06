import 'package:finance_ui/features/Homepage/widgets/carousel_widgets.dart';
import 'package:finance_ui/features/Homepage/widgets/cutom_home_page_item.dart';
import 'package:finance_ui/features/Homepage/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 18.h),
              const TopProfileNotificationWidget(),
              SizedBox(height: 18.h),
              const CustomCarsouselWidget(),
              SizedBox(height: 24.h),

              // Expanded GridView
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.sp,
                  crossAxisSpacing: 16.sp,
                  children: [
                    CutomHomePageItem(
                      title: "send money",
                      description: "tack acc to acc",
                      iconData: Icons.send,
                    ),
                    CutomHomePageItem(
                      title: "Pay the bill",
                      description: "lorem ipsum",
                      iconData: Icons.wallet,
                    ),
                    CutomHomePageItem(
                      title: "Request",
                      description: "lorem ipsum",
                      iconData: Icons.send,
                    ),
                    CutomHomePageItem(
                      title: "contact",
                      description: "lorem ipsum",
                      iconData: Icons.contact_emergency,
                    ),

                    // Add your grid items here
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
