import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomElevatedButton(
        width: 207,
        height: 45,
        onPressed: () {},
        text: AppStrings.login,
        textStyle: AppTextstyles.style17weightcolor,
        backgroundColor: AppColors.orangecolor,
      ),
    );
  }
}
