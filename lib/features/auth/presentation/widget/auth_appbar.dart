import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:go_router/go_router.dart';

class AuthAppBar extends StatelessWidget {
  final String title;
  const AuthAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(title, style: AppTextstyles.styleauth),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: SvgPicture.asset(AppAssets.back_arrow),
      ),
    );
  }
}
