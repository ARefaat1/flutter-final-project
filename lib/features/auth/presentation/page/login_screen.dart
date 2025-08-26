import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';

import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/custum_appbar.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/welcome_column.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustumAppbar(
                title: AppStrings.login,
              ),
              WelcomeColumn(),
              Text(
                AppStrings.email,
                textAlign: TextAlign.left,
                style: AppTextstyles.style20w500,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.password,
                textAlign: TextAlign.left,
                style: AppTextstyles.style20w500,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: passwordController,
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppAssets.showoff)),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: TextButton(
                    onPressed: () {
                      context.push('/forgot-password');
                    },
                    child: Text(
                      AppStrings.forgotpassword,
                      style: AppTextstyles.style15orgL,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                child: CustomElevatedButton(
                  width: 207,
                  height: 45,
                  onPressed: () {},
                  text: AppStrings.login,
                  textStyle: AppTextstyles.style17weightcolor,
                  backgroundColor: AppColors.orangecolor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  AppStrings.orsignupwith,
                  style: AppTextstyles.stylesuptitle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.google),
                  const SizedBox(width: 5),
                  SvgPicture.asset(AppAssets.facebook),
                  const SizedBox(width: 5),
                  SvgPicture.asset(AppAssets.fingerprint),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.donthaveaccount,
                      style: AppTextstyles.stylesuptitle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.signup,
                        style: AppTextstyles.style15orgL,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
