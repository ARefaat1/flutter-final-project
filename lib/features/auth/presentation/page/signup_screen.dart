import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/custum_appbar.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_Button.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_footer.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_form.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/social.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_terms.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: AppStrings.newacount,
            titleTextStyle: AppTextstyles.styleauth,
          ),
          CustomBottomContainer(
            width: double.infinity,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SignupForm(),
                    const SizedBox(height: 5),
                    const SignupTerms(),
                    const SizedBox(height: 5),
                    SignupButton(formKey: formKey),
                    const SizedBox(height: 5),
                    const Social(),
                    const SizedBox(height: 5),
                    const SignupFooter(),
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
