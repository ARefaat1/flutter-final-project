import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_svg/svg.dart';

/// Menu app bar widget for different screens, e.g., favorites, recommendations, etc.
/// You can change the title and use it in your screen.

class MenuAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MenuAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.YellowBase,
      automaticallyImplyLeading: false, // disables default back button
      title: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: SvgPicture.asset('assets/icons/back.svg'),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Center(
              child: Text(title, style: AppTextstyles.style17weightcolor),
            ),
          ),
        ],
      ),
      toolbarHeight: 80, // ✅ makes AppBar taller
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80); // ✅ required
}
