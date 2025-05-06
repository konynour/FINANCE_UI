import 'package:finance_ui/core/styleling/app_assets.dart';
import 'package:finance_ui/features/auth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SocialLoginIcons extends StatelessWidget {
  const SocialLoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: () {}, iconpath: AppAssets.facebooksvg, ),
        CustomIconButton(onTap: () {}, iconpath: AppAssets.googlesvg,  ),
        CustomIconButton(onTap: () {}, iconpath: AppAssets.applesvg, ),
      ],
    );
  }
}
