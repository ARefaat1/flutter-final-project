import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))
              ],
            ),
            Text(
              "Welcome",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore et dolore\n magna aliqua. ",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Email or Mobile Number ",
              style: TextStyle(color: AppColors.blackfont),
            ),
            CustomTextFormField(
              controller: TextEditingController(),
              width: 325,
              height: 45,
              obscureText: false,
              keyboardType: TextInputType.text,
              suffixicon: const Icon(Icons.lock, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
