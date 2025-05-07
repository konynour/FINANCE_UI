import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styleling/app_assets.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/primary_button_widget.dart';
import 'package:finance_ui/core/styleling/wiget/primary_outline_button_widget.dart';
import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Image.asset(
              AppAssets.onBoard,
              width: double.infinity,
              height: 570.h,
              fit: BoxFit.fitWidth,
            ),
            const heightspace(21),
            PrimaryButtonWidget(
              buttonText: "login",
              width: 331.w,
              height: 56.h,

              onPress: () {
                GoRouter.of(context).pushNamed(AppRoutes.LoginScreen);
              },
            ),
            SizedBox(height: 15.h),
            primaryOutlineButtonWidget(
              buttonText: "Register",
              width: 331.w,
              height: 56.h,
              onPress: () {
                GoRouter.of(context).pushNamed(AppRoutes.RegisterLoginScreen);
              },
            ),
            SizedBox(height: 46.h),
            Text(
              "continue as a guest",

              style: AppStyles.black15BoldStyle.copyWith(
                color: const Color(0xff202955),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
