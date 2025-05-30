import 'package:finance_ui/core/routing/router_generation_config.dart';
import 'package:finance_ui/core/styleling/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: Apptheme.lightTheme,
          routerConfig: RouterGenerationConfig.goRouter ,
        );
      },

     
    );
  }
}
