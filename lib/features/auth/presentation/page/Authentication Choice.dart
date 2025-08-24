import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/features/auth/presentation/page/login_screen.dart';

class Authenticationchoice extends StatelessWidget {
  const Authenticationchoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orangecolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo1,
              width: 202.31,
              height: 257.6,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              textAlign: TextAlign.center,
              "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod.",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whitefont),
            ),
            SizedBox(
              height: 30,
            ),
            CustomElevatedButton(
              width: 207,
              height: 45,
              text: "log in",
              textStyle: TextStyle(
                  color: AppColors.orangecolor,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              backgroundColor: AppColors.YellowBase,
            ),
            SizedBox(
              height: 5,
            ),
            CustomElevatedButton(
                width: 207,
                height: 45,
                text: "sign up",
                textStyle: TextStyle(
                    color: AppColors.orangecolor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
                onPressed: () {},
                backgroundColor: AppColors.yellow2),
          ],
        ),
      ),
    );
  }
}
