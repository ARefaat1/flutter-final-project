import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/core/widget/custom_label.dart';
import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';

import 'package:flutter_svg/svg.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: AppStrings.setpassword,
            titleTextStyle: AppTextstyles.styleauth,
          ),
          CustomBottomContainer(
            width: double.infinity,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.subtitleLogin,
                      style: AppTextstyles.style14blackfont,
                    ),
                    const SizedBox(height: 30),
                    const CustomLabel(text: AppStrings.password),
                    CustomTextFormField(
                      controller: password,
                      obscureText: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppAssets.showoff),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    const CustomLabel(text: AppStrings.confirmpassword),
                    CustomTextFormField(
                      controller: confirmPassword,
                      obscureText: false,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppAssets.showoff),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: CustomElevatedButton(
                        text: AppStrings.createnewpasssword,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
