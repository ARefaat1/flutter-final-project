import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class CustomBottomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const CustomBottomContainer({
    super.key,
    this.height,
    required this.child,
    this.padding,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: padding ?? const EdgeInsets.all(20),
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: AppColors.black12,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
