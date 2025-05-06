import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/custom_text_fleid.dart';
import 'package:finance_ui/core/styleling/wiget/primary_button_widget.dart';
import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController emailcontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const heightspace(12),
                const BackButton(),
                SizedBox(height: 28.h),

                SizedBox(
                  width: 200.w,
                  child: Text(
                    "Forgot Password?",
                    style: AppStyles.primaryHeadLinestyle,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Don't worry! It occurs. Please enter the email address linked with your account.",
                  style: AppStyles.subtitlesStyle,
                ),

                SizedBox(height: 20),
                CustomTextFleid(
                  controller: emailcontroller,
                  hinText: "enter your Email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your email";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 45.h),

                PrimaryButtonWidget(
                  buttonText: "Send Code",
                  onPress: () {
                    GoRouter.of(context).push(AppRoutes.verifyOtpScreen);
                  },
                ),

                const SizedBox(height: 380),

                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Remember Password?",
                      style: AppStyles.black15BoldStyle.copyWith(
                        color: AppCorlors.primarycolor,
                      ),
                      children: [
                        TextSpan(
                          text: "  Login",
                          style: AppStyles.black15BoldStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
