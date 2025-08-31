import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

class SignupFooter extends StatelessWidget {
  const SignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppStrings.donthaveaccount, style: AppTextstyles.style14BlackW300),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size(0, 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {},
            child: Text(AppStrings.login, style: AppTextstyles.style15OrangeW600),
          ),
        ],
      ),
    );
  }
}
