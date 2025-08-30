import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final double? width;
  final double? height;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final bool? readonly;
  final void Function()? ontap;
  final Color? fillColor;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.width,
    this.height,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.hintStyle,
    this.readonly,
    this.ontap,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 322,
      height: height ?? 45,
      child: TextFormField(
        onTap: ontap,
        controller: controller,
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obscureText,
        readOnly: readonly ?? false,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: hintStyle,
          filled: true,
          fillColor: fillColor ?? const Color(0xFFF3E9B5),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
