import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/custum_appbar.dart';
import 'package:flutter_final_project/features/auth/presentation/widget/welcome_column.dart';

class LoginAppbar extends StatelessWidget {
  const LoginAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustumAppbar(title: AppStrings.login),
        WelcomeColumn(),
      ],
    );
  }
}
