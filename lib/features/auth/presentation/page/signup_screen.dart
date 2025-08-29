import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/custum_appbar.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_footer.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_form.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/social.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_terms.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SignupForm(),
                    SizedBox(height: 10),
                    SignupTerms(),
                    SizedBox(height: 10),
                    Social(),
                    SizedBox(height: 10),
                    SignupFooter(),
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
