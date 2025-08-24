import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_svg/svg.dart';

class MenuAppBar extends StatelessWidget {
  String title;

  MenuAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // i want alot of top padding
      padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0, bottom: 8.0),
      child: AppBar(
        backgroundColor: AppColors.YellowBase,
        title: Row(
          children: [
            // make a back button icon using svgasset
            IconButton(
                onPressed: Navigator.of(context).pop,
                icon: SvgPicture.asset('assets/icons/back.svg')),
            Center(
              child: Text(title, style: AppTextstyles.style17weightcolor),
            )
          ],
        ),
      ),
    );
  }
}
