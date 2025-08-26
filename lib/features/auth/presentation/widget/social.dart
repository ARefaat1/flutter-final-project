import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/router/app_routes.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignupSocial extends StatelessWidget {
  const SignupSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
          width: 207,
          height: 45,
          text: AppStrings.signup,
          onPressed: () {
            context.push(AppRoutes.home);
          },
        ),
        const SizedBox(height: 8),
        Text(AppStrings.orsignupwith, style: AppTextstyles.style14blackfont),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(onTap: () {}, child: SvgPicture.asset(AppAssets.google)),
            const SizedBox(width: 5),
            InkWell(onTap: () {}, child: SvgPicture.asset(AppAssets.facebook)),
            const SizedBox(width: 5),
            InkWell(
                onTap: () {
                  context.push(AppRoutes.fingerprint);
                },
                child: SvgPicture.asset(AppAssets.fingerprint)),
          ],
        ),
      ],
    );
  }
}
