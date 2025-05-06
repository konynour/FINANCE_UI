import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadLinestyle = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppCorlors.primarycolor,
  );
  static TextStyle subtitlesStyle = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppCorlors.secondrycolor,
  );
  static TextStyle black16w500style = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppCorlors.blackcolor,
  );
  static  TextStyle grey12MeduimStyle = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppCorlors.greyColor,
  );

   static  TextStyle black15BoldStyle = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );


  static  TextStyle black18BoldStyle = TextStyle(
    fontFamily: AppFonts.mainfontName,
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );




  static var textStyle18w500;
}




