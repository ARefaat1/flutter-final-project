import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class CustomSeparatorLine extends StatelessWidget {
  const CustomSeparatorLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: const Divider(
        thickness: 1,
        color: AppColors.linecolor,
      ),
    );
  }
}