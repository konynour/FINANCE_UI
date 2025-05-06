import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 41.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),

          border: Border.all(color: const Color(0xffE8ECFA), width: 1),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Icon(Icons.arrow_back, color: AppCorlors.primarycolor),
          ),
        ),
      ),
    );
  }
}
