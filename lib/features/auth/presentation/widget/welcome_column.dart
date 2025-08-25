import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

class WelcomeColumn extends StatelessWidget {
  const WelcomeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          AppStrings.welcome,
          style: AppTextstyles.style24blackfont,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppStrings.subtitleLogin,
          textAlign: TextAlign.left,
          style: AppTextstyles.stylesuptitle,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
