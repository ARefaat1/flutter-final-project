import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custum_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';

class FingerprintScreen extends StatelessWidget {
  const FingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustumAppbar(
            title: AppStrings.SetYourFingerprint,
            titleTextStyle: AppTextstyles.styleauth,
          ),
          CustomBottomContainer(
            width: double.infinity,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.subtitleLogin,
                    style: AppTextstyles.style14Blackw500,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  SvgPicture.asset(
                    AppAssets.finger,
                    width: 241.9,
                    height: 312.27,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "ضع إصبعك لتأكيد الدخول",
                    style: AppTextstyles.style20BlackW500,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      // هنا هتستدعي كود البصمة اللي بالـ local_auth
                    },
                    child: const Text("استخدام البصمة"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
