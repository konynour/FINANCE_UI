import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/custom_text_fleid.dart';
import 'package:finance_ui/core/styleling/wiget/primary_button_widget.dart';
import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:finance_ui/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController emailcontroller;
  late TextEditingController password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailcontroller = TextEditingController();
    password = TextEditingController();
  }

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const heightspace(12),
                  const BackButton(),
                  SizedBox(height: 28.h),

                  SizedBox(
                    width: 200.w,
                    child: Text(
                      "Welcome back! Again!",
                      style: AppStyles.primaryHeadLinestyle,
                    ),
                  ),
                  SizedBox(height: 32.h),

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
                  const SizedBox(height: 20),

                  CustomTextFleid(
                    controller: password,
                    hinText: "password",

                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppCorlors.greyColor,
                      size: 20.sp,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your email";
                      }
                      if (value.length < 8) {
                        return " the passweord must be at lest 8 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.h),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.forgotPassword);
                      },
                      child: Text(
                        "Forget Password?",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: const Color(0xff6A707C),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30.h),

                  PrimaryButtonWidget(
                    buttonText: "login",
                    onPress: () {
                      if (formkey.currentState!.validate()) {}
                      GoRouter.of(context).pushNamed(AppRoutes.mainscreen);
                    },
                  ),
                  const SizedBox(height: 35),

                  const CustomOrLoginWidget(),
                  const SizedBox(height: 22),
                  const SocialLoginIcons(),
                  const SizedBox(height: 155),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account?",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppCorlors.primarycolor,
                        ),
                        children: [
                          TextSpan(
                            text: " Login Now",
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
      ),
    );
  }
}
