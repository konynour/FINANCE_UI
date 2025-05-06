import 'package:finance_ui/core/styleling/app_assets.dart';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWigets extends StatefulWidget {
  const CardItemWigets({super.key});

  @override
  State<CardItemWigets> createState() => _CardItemWigetsState();
}

class _CardItemWigetsState extends State<CardItemWigets> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: AppCorlors.primarycolor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.Ellipse14,
            width: 120.w,
            height: 130.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.Ellipse14,
            width: 120.w,
            height: 130.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.Ellipse15,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.Ellipse15,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 24.w,
          top: 24.w,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " x card",
                style: AppStyles.black18BoldStyle.copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 57),
              Text(
                " Balance",
                style: AppStyles.black18BoldStyle.copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),

              Text(
                " 23000 EG",
                style: AppStyles.black18BoldStyle.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),

        Positioned(
          bottom: 26.h,
          right: 24.w,
          child: Text(
            " 12/25",
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 26.h,
          left: 24.w,
          child: Text(
            " ****  3434",
            style: AppStyles.black18BoldStyle.copyWith(
              fontSize: 12.sp,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
