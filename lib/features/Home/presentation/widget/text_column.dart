import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // 👈 خليهم على الشمال لو حابب
      children: [
        Text(
          "Good Morning",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.whitefont,
          ),
        ),
        // 👈 مسافة رأسية صغيرة بين النصين
        Text(
          "Rise and shine! It's breakfast time",
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
