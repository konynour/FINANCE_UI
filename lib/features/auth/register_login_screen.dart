import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/custom_text_fleid.dart';
import 'package:finance_ui/core/styleling/wiget/primary_button_widget.dart';
import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:finance_ui/features/auth/widgets/custom_or_register_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_ui/core/styleling/back_button.dart' as custom;

class RegisterLoginScreen extends StatefulWidget {
  const RegisterLoginScreen({super.key});

  @override
  State<RegisterLoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterLoginScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController Usernamecontroller;
  late TextEditingController emailcontroller;

  late TextEditingController password;
  late TextEditingController confirmpassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Usernamecontroller = TextEditingController();
    emailcontroller = TextEditingController();
    password = TextEditingController();
    confirmpassword = TextEditingController();
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
                  const custom.BackButton(),
                  SizedBox(height: 28.h),

                  SizedBox(
                    width: 200.w,
                    child: Text(
                      "Hello! Register to get started",
                      style: AppStyles.primaryHeadLinestyle,
                    ),
                  ),
                  SizedBox(height: 32.h),

                  CustomTextFleid(
                    controller: Usernamecontroller,
                    hinText: "firstname",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "firstname";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  CustomTextFleid(
                    controller: emailcontroller,
                    hinText: "Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  CustomTextFleid(
                    controller: password,
                    hinText: "Password",

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter your password";
                      }
                      if (value.length < 8) {
                        return "The password must be at least 8 characters";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 16.h),

                  CustomTextFleid(
                    controller: confirmpassword,
                    hinText: "Confirm Password",

                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please confirm your password";
                      }
                      if (value != password.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 15.h),

                  SizedBox(height: 30.h),

                  PrimaryButtonWidget(
                    buttonText: "Register",
                    onPress: () {
                      if (formkey.currentState!.validate()) {}
                      GoRouter.of(context).pushNamed(AppRoutes.mainscreen);
                    },
                  ),
                  const SizedBox(height: 35),

                  CustomOrRegisterWidget(),
                  const SizedBox(height: 22),
                  const SocialLoginIcons(),
                  const SizedBox(height: 30),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
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
