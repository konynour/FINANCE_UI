import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styleling/app_corlors.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/primary_button_widget.dart';

import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verifyOtpScreen extends StatefulWidget {
  const verifyOtpScreen({super.key});

  @override
  State<verifyOtpScreen> createState() => _verifyOtpScreenState();
}

class _verifyOtpScreenState extends State<verifyOtpScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController pincodecontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pincodecontroller = TextEditingController();
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
                      "OTP Verification",
                      style: AppStyles.primaryHeadLinestyle,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Enter the verification code we just sent on your email address.",
                    style: AppStyles.subtitlesStyle,
                  ),

                  const SizedBox(height: 32),
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    controller: pincodecontroller,
                    obscureText: false,
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    textStyle: AppStyles.primaryHeadLinestyle.copyWith(
                      fontSize: 22.sp,
                    ),
                    pinTheme: PinTheme(
                      fieldHeight: 70.w,

                      fieldWidth: 60.h,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8.r),
                      selectedColor: AppCorlors.primarycolor,
                      selectedFillColor: AppCorlors.whiteColor,
                      activeColor: AppCorlors.primarycolor,
                      activeFillColor: AppCorlors.whiteColor,
                      inactiveColor: AppCorlors.greyColor,
                      inactiveFillColor: AppCorlors.greyColor.withOpacity(0.1),
                    ),
                    onChanged: (value) {
                      print("pin value:$value");
                    },
                    onCompleted: (value) {
                      GoRouter.of(
                        context,
                      ).push(AppRoutes.CreateNewPasswordScreen);
                    },
                  ),
                  SizedBox(height: 38.h),
                  PrimaryButtonWidget(buttonText: "Verify", onPress: () {}),
                  SizedBox(height: 357.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Didn't have received code",
                        style: AppStyles.black15BoldStyle.copyWith(
                          color: AppCorlors.primarycolor,
                        ),
                        children: [
                          TextSpan(
                            text: " Resend",
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
