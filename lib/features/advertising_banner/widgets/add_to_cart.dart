import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_svg/svg.dart';

class AddToCart extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final IconData? icon;
  final Color? iconColor;

  const AddToCart({
    super.key,
    this.text = 'Add to Cart',
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor = AppColors.orangecolor,
    this.textStyle,
    this.icon = Icons.shopping_cart_outlined,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.bag,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: textStyle ?? AppTextstyles.style20w500white,
            ),
          ],
        ),
      ),
    );
  }
}
 