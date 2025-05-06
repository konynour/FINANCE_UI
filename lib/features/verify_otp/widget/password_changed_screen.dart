import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styleling/app_assets.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedScreen extends StatefulWidget {
  const PasswordChangedScreen({super.key});

  @override
  State<PasswordChangedScreen> createState() => _PasswordChangedScreenState();
}

class _PasswordChangedScreenState extends State<PasswordChangedScreen> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200.h,
                  ), // Add space above to push content down
                  Center(
                    child: Image.asset(AppAssets.Successmark, height: 100.h),
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    "Password Changed!",
                    style: AppStyles.primaryHeadLinestyle,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Your password has been changed successfully.",
                    style: AppStyles.subtitlesStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40.h),
                  PrimaryButtonWidget(
                    buttonText: "Back to Login",
                    onPress: () {
                      GoRouter.of(context).push(AppRoutes.LoginScreen);
                    },
                  ),
                  SizedBox(
                    height: 100.h,
                  ), // Add space below to balance the layout
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
