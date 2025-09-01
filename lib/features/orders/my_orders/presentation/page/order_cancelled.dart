import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderCancelled extends StatelessWidget {
  const OrderCancelled({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.YellowBase,
      appBar: MenuAppBar(title: "",),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.orderCancelled),
                SizedBox(height: 40),
                Text(AppStrings.orderCancelled, style: AppTextstyles.style24BlackW900),
                Text(AppStrings.orderCancelledMessage, style: AppTextstyles.style16BlackW500),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(AppStrings.cancelQuestions, style: AppTextstyles.style16BlackW500),
                ],
              ),
            ),
          ],
        ),
      )
    );


  }
}