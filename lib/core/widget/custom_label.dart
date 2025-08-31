import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

class CustomLabel extends StatelessWidget {
  final String text;

  const CustomLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        text,
        style: AppTextstyles.style20Blackw500,
      ),
    );
  }
}
