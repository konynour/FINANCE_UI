import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class primaryOutlineButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? bordersColors;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final Color? textColor;
  final double? fontsize;
  final void Function()? onPress;

  const primaryOutlineButtonWidget({
    super.key,
    this.buttonText,
    this.bordersColors,
    this.width,
    this.height,
    this.bordersRadius,
    this.textColor,
    this.onPress,
    this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: bordersColors ?? AppCorlors.primarycolor, width: 1 ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(color: textColor ??  AppCorlors.primarycolor,
        fontWeight: FontWeight.bold,
         fontSize:  fontsize ?? 16.sp),
      ),
    );
  }
}
