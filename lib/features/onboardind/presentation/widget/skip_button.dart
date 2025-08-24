import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 20,
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/login");
        },
        child: Row(
          children: [
            Text(AppStrings.skip, style: AppTextstyles.style15orgL),
            const SizedBox(width: 5),
            SvgPicture.asset(
              AppAssets.nexticon,
            ),
          ],
        ),
      ),
    );
  }
}
