import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';

class ActionIcon extends StatelessWidget {
  const ActionIcon({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        width: 26,
        height: 26,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
