import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_bottom_container.dart';
import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';
import 'package:flutter_final_project/core/widget/menu_app_bar.dart';
import 'package:flutter_svg/svg.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.YellowBase,
        appBar: MenuAppBar(title: AppStrings.addNewAddress),
        body: CustomBottomContainer(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SvgPicture.asset(
                      AppAssets.homeOrange,
                      width: 76,
                      height: 66.4873275756836,
                    ),
                  ),
                ),
                Text(AppStrings.name, style: AppTextstyles.style20BlackW500),
                CustomTextFormField(
                  hintText: AppStrings.name,
                  hintStyle: AppTextstyles.style12w300grey,
                ),
                Text(AppStrings.address, style: AppTextstyles.style20BlackW500,),
                CustomTextFormField(
                  hintText: AppStrings.address,
                  hintStyle: AppTextstyles.style12w300grey,
                ),
              ],
            ),
          ),
        )
      );
  }
}
