import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';

class SignupButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SignupButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomElevatedButton(
        width: 207,
        height: 45,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            print(" Login Success");
          } else {
            print(" Validation Failed");
          }
        },
        text: AppStrings.signup,
        textStyle: AppTextstyles.style17weightcolor,
        backgroundColor: AppColors.orangecolor,
      ),
    );
  }
}
