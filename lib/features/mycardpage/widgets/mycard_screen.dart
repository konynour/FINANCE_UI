import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:finance_ui/features/mycardpage/widgets/card_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MycardScreen extends StatefulWidget {
  const MycardScreen({super.key});

  @override
  State<MycardScreen> createState() => _MycardScreenState();
}

class _MycardScreenState extends State<MycardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const heightspace(12),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Back Button on the left
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const BackButton(),
                    ),

                    // Title in the center
                    Center(
                      child: Text(
                        "All Cards",
                        style: AppStyles.black18BoldStyle,
                      ),
                    ),
                    const heightspace(20), // More icon on the right
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 48.w,
                        height: 48.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xffE3E9ED),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          size: 24.sp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
                const heightspace(24),
                AllCardsScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
