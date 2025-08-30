import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.whitefont,
            height: 1.0,
          ),
        ),
        Text(
          "Rise and shine! It's breakfast time",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.orange,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
