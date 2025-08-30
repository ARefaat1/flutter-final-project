import 'package:flutter_final_project/core/Validators/app_Validator.dart';
import 'package:flutter_final_project/core/Validators/app_regex.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';

class PhoneNumberAppValidator extends AppValidator {
  PhoneNumberAppValidator({super.initValue});

  @override
  List<String> check() {
    List<String> reasons = [];

    if (value.isEmpty) {
      reasons.add(AppStrings.phoneIsRequired);
    }
    if (!AppRegExp.phone.hasMatch(value)) {
      reasons.add(AppStrings.phoneNotValid);
    }
    return reasons;
  }
}
