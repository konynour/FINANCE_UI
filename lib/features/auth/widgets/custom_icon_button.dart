import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String iconpath;
  const CustomIconButton({super.key, required this.iconpath,this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),

          border: Border.all(color: const Color(0xffE8ECFA), width: 1),
        ),
        child: Center(
          child: SvgPicture.asset(
            iconpath,
            width: 12.w,
            height: 24.h,
          ),
        ),
      ),
    );
   



  }
}
