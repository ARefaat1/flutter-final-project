import 'package:flutter/material.dart';
import 'package:flutter_final_project/core/utils/app_assets.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';
import 'package:flutter_final_project/core/widget/custom_textformfiled.dart';
import 'package:flutter_final_project/core/widget/custom_label.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController username = TextEditingController();
    final TextEditingController phoneNumber = TextEditingController();
    final TextEditingController birthDate = TextEditingController();
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLabel(text: AppStrings.fullname),
        CustomTextFormField(controller: username),
        const SizedBox(height: 5),
        CustomLabel(text: AppStrings.phonenumber),
        CustomTextFormField(
          controller: phoneNumber,
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 5),
        CustomLabel(text: AppStrings.birthdate),
        CustomTextFormField(
          controller: birthDate,
          readonly: true,
          ontap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime(2000),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
            if (pickedDate != null) {
              birthDate.text =
                  "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
            }
          },
        ),
        const SizedBox(height: 5),
        CustomLabel(text: AppStrings.email),
        CustomTextFormField(controller: email),
        const SizedBox(height: 5),
        CustomLabel(text: AppStrings.password),
        CustomTextFormField(
          controller: password,
          obscureText: true,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppAssets.showoff),
          ),
        ),
      ],
    );
  }
}
