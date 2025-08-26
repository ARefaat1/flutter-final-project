import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

class SignupTerms extends StatelessWidget {
  const SignupTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(color: Colors.black, fontSize: 14),
          children: [
            TextSpan(text: AppStrings.Bycontinuing + "\n"),
            TextSpan(
                text: AppStrings.TermsofUse, style: AppTextstyles.style15orgL),
            TextSpan(text: AppStrings.and),
            TextSpan(
                text: AppStrings.PrivacyPolicy,
                style: AppTextstyles.style15orgL),
          ],
        ),
      ),
    );
  }
}
