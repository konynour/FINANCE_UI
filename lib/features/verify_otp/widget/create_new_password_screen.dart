import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/styleling/app_styles.dart';
import 'package:finance_ui/core/styleling/wiget/custom_text_fleid.dart';
import 'package:finance_ui/core/styleling/wiget/primary_button_widget.dart';
import 'package:finance_ui/core/styleling/wiget/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_ui/core/styleling/back_button.dart' as custom;

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final formkey = GlobalKey<FormState>();

  late TextEditingController newpassword;
  late TextEditingController confirmpassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newpassword = TextEditingController();
    confirmpassword = TextEditingController();
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
                const custom.BackButton(),
                SizedBox(height: 28.h),

                SizedBox(
                  width: 200.w,
                  child: Text(
                    "Create new password",
                    style: AppStyles.primaryHeadLinestyle,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Your new password must be unique from those previously used.",
                  style: AppStyles.subtitlesStyle,
                ),
                const SizedBox(height: 32),

                CustomTextFleid(
                  controller: newpassword,
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
                    if (value != newpassword.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 40.h),

                PrimaryButtonWidget(
                  buttonText: "Reset password",
                  onPress: () {
                    GoRouter.of(context).push(AppRoutes.passwordchangedScreen);
                  },
                ),

                const SizedBox(height: 380),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
