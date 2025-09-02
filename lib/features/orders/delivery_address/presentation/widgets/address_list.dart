import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';
import 'package:flutter_final_project/core/widget/custom_elevated_button.dart';
import 'package:flutter_final_project/core/widget/custom_seprator_line.dart';
import 'package:flutter_svg/svg.dart';

class AddressList extends StatefulWidget {
  const AddressList({super.key});

  @override
  State<AddressList> createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  int? _selectedIndex;

  final List<Map<String, String>> addresses = [
    {"title": "My home", "subtitle": "778 Locust View Drive Oakland, CA"},
    {"title": "My Office", "subtitle": "778 Locust View Drive Oakland, CA"},
    {
      "title": "Parent's House",
      "subtitle": "778 Locust View Drive Oakland, CA"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSeparatorLine(),
        Expanded(
          child: ListView.separated(
            itemCount: addresses.length,
            separatorBuilder: (context, index) => const Divider(
              color: AppColors.linecolor,
              thickness: 1.0,
            ),
            itemBuilder: (context, index) {
              return RadioListTile<int>(
                value: index,
                groupValue: _selectedIndex,
                activeColor: AppColors.orangecolor,
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                title: Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.homeOrange,  //TODO this icon doesn't show
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            addresses[index]["title"]!,
                            style: AppTextstyles.style20BlackW500,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            addresses[index]["subtitle"]!,
                            style: AppTextstyles.style14BlackW300,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        // "Add New Address" button at bottom
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomElevatedButton(
              text: AppStrings.addNewAddress,
              backgroundColor: AppColors.orangecolor2,
              textStyle: AppTextstyles.style17OrangeW400,
              onPressed: () {
                // TODO: Handle adding a new address Navigation
              }),
        ),
      ],
    );
  }
}
