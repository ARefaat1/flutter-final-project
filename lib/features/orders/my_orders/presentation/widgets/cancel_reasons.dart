import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_colors.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/utils/app_textstyles.dart';

class CancelReasons extends StatefulWidget {
  const CancelReasons({super.key});

  @override
  State<CancelReasons> createState() => _CancelReasonsState();
}

class _CancelReasonsState extends State<CancelReasons> {
  int? _selectedIndex; // stores which radio button is selected
  final TextEditingController _otherReasonController = TextEditingController();

  final List<String> reasons = [
    "Reason 1",
    "Reason 2",
    "Reason 3",
    "Reason 4",
    "Reason 5",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: reasons.length + 1, // +1 for the "Others" option
      separatorBuilder: (context, index) => const Divider(
        color: AppColors.linecolor,
        thickness: 0.7,
      ),
      itemBuilder: (context, index) {
        if (index < reasons.length) {
          // Normal reasons
          return RadioListTile<int>(
            value: index,
            groupValue: _selectedIndex,
            activeColor: AppColors.orangecolor, // orange radio
            controlAffinity: ListTileControlAffinity.trailing,
            // radio on right
            onChanged: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            title: Text(
              reasons[index],
              style: AppTextstyles.style15BlackW400,
            ),
          );
        } else {
          // "Others" option
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioListTile<int>(
                value: reasons.length, // index after last reason
                groupValue: _selectedIndex,
                activeColor: AppColors.orangecolor,
                controlAffinity:
                    ListTileControlAffinity.trailing, // radio on right
                onChanged: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                title: const Text(
                  "Other",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              if (_selectedIndex == reasons.length)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    width: 323, // control width
                    height: 95, // control height
                    child: TextField(
                      controller: _otherReasonController,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black, // text color
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.yellow2, // background placeholder
                        hintText: AppStrings.enterYourReason,
                        hintStyle: AppTextstyles.style14BlackW100,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.linecolor, // border placeholder
                            width: 1.2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors
                                .yellow2, // highlight border when focused
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 95,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          );
        }
      },
    );
  }
}
