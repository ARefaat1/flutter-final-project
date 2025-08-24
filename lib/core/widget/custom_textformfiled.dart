import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;
  final double? width;
  final double? height;
  final TextInputType? keyboardType;
  final Widget? suffixicon;
  final Widget? prefix;
  final Color? fillColor;
  final TextStyle? hintstyle;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hintText = "",
    this.obscureText = false,
    this.width,
    this.height,
    this.keyboardType,
    this.suffixicon,
    this.prefix,
    this.fillColor,
    this.hintstyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffixicon,
          hintText: hintText,
          hintStyle: hintstyle,
          filled: true,
          fillColor: fillColor ?? Colors.grey[200],
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
