import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustumAppbar extends StatelessWidget {
  const CustumAppbar(
      {super.key, this.title, this.centertitle, this.titleTextStyle});
  final String? title;
  final bool? centertitle;
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(title ?? ''),
              titleTextStyle: AppTextstyles.styleauth,
              centerTitle: centertitle ?? true,
              leading: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: SvgPicture.asset(
                  AppAssets.back_arrow,
                ),
              ),
              leadingWidth: 27,
            ),
          ),
        ],
      ),
    );
  }
}
