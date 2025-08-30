import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/Validators/app_validator/Email.dart';
import 'package:flutter_final_project/core/Validators/app_validator/Password.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/login_appbar.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/login_button.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/login_form.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/signup_footer.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/social.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final EmailAppValidator emailValidator = EmailAppValidator();
  final PasswordAppValidator passwordValidator = PasswordAppValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          // ✅ هنا لازم تضيف الـ Form
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginAppbar(),
              LoginForm(
                emailController: emailController,
                passwordController: passwordController,
              ),
              const SizedBox(height: 70),
              LoginButton(formKey: formKey), // ✅ لازم تبعت الـ formKey
              const SizedBox(height: 20),
              const Social(),
              const SizedBox(height: 30),
              const SignupFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
