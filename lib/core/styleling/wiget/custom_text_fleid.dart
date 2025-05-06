import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFleid extends StatelessWidget {
  final String? hinText;
  final Widget? suffixIcon;
  final double? Width;
  final TextEditingController? controller;
  final  String? Function(String?)? validator;
  final bool? ispassword;

  const CustomTextFleid({
    super.key,
    this.hinText,
    this.suffixIcon,
    this.Width,
    this.controller,
    this.validator,
    this.ispassword,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Width ?? 333.w,
      child: TextFormField(
        controller: controller,
        validator: validator,
        autofocus: ispassword ?? false,
        obscureText: true,
        cursorColor: AppCorlors.primarycolor,
        decoration: InputDecoration(
          hintText: hinText ?? "",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            color: const Color(0xff8391A1),
            fontWeight: FontWeight.w500,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: const Color(0XffE8ECF4), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppCorlors.primarycolor, width: 1),
          ),
          errorBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color:Colors.red, width: 1),
          ), 

          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          filled: true,
          fillColor: Color(0xffF7f8F9),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
