import 'package:finance_ui/core/styleling/app_assets.dart';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.berserk,
                width: 48.w,
                height: 48.w,
                fit: BoxFit.fill,
              ),
            ),
            widthspace(11),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: AppStyles.grey12MeduimStyle.copyWith(
                    fontSize: 12.sp,
                    color: const Color(0xff6A707C),
                  ),
                ),
                const heightspace(2),
                Text("nour eldin mohamed", style: AppStyles.black18BoldStyle),
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffE3E9ED), width: 1),
          ),
          child: Icon(
            Icons.notifications,
            size: 24.sp,
            color: AppCorlors.primarycolor,
          ),
        ),
      ],
    );
  }
}
