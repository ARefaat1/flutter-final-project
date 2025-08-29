import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.email, style: AppTextstyles.style20w500),
        const SizedBox(height: 10),
        CustomTextFormField(controller: emailController),
        const SizedBox(height: 20),
        Text(AppStrings.password, style: AppTextstyles.style20w500),
        const SizedBox(height: 10),
        CustomTextFormField(
          controller: passwordController,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppAssets.showoff),
          ),
        ),
        const SizedBox(height: 15),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: TextButton(
              onPressed: () => context.push('/forgot-password'),
              child: Text(
                AppStrings.forgotpassword,
                style: AppTextstyles.style15orgL,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
