import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_svg/svg.dart';

/// Menu app bar widget for different screens, e.g., favorites, recommendations, etc.
/// You can change the title and use it in your screen.

class AdAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AdAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.YellowBase,
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: SvgPicture.asset('assets/icons/back.svg'),
      ),
      title: Text(title, style: AppTextstyles.style20BlackW500),
      toolbarHeight: 80,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
