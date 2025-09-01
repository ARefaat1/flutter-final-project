import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width; // 👈 nullable width
  final double? height;
  final Color? backgroundColor;
  final TextStyle? textStyle;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width, // if null → button will hug content
    this.height = 40,
    this.backgroundColor = AppColors.orangecolor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle ?? AppTextstyles.style17whiteW500,
        overflow: TextOverflow.ellipsis, // safety if width is too small
      ),
    );

    // 👇 Conditional wrapping based on width
    if (width != null) {
      return SizedBox(width: width, height: height, child: button);
    } else {
      return ConstrainedBox(
        constraints: BoxConstraints(minHeight: height ?? 40),
        child: IntrinsicWidth( // 👈 makes button hug its text
          child: button,
        ),
      );
    }
  }
}
