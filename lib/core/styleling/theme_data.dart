import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_fonts.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:flutter/material.dart';

class Apptheme {
  static final lightTheme = ThemeData(primaryColor: AppCorlors.primarycolor,
  scaffoldBackgroundColor: AppCorlors.whiteColor,
  fontFamily: AppFonts.mainfontName,
  textTheme: TextTheme(
    titleLarge: AppStyles.primaryHeadLinestyle,
    titleMedium: AppStyles.subtitlesStyle,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: AppCorlors.primarycolor,
    disabledColor: AppCorlors.secondrycolor,
  ),
  );
}
