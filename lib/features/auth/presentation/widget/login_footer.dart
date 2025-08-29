import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

class login_Footer extends StatelessWidget {
  const login_Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.donthaveaccount, style: AppTextstyles.stylesuptitle),
        TextButton(
          onPressed: () {},
          child: Text(
            AppStrings.signup,
            style: AppTextstyles.style15orgL,
          ),
        ),
      ],
    );
  }
}
