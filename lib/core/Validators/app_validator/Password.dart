import 'package:flutter_final_project/core/Validators/app_Validator.dart';
import 'package:flutter_final_project/core/Validators/app_regex.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';

class PasswordAppValidator extends AppValidator {
  PasswordAppValidator({super.initValue});

  @override
  List<String> check() {
    List<String> reasons = [];

    if (value.isEmpty) {
      reasons.add(AppStrings.passwordIsRequired);
    }
    if (!AppRegExp.password.hasMatch(value)) {
      reasons.add(AppStrings.passwordNotValid);
    }
    return reasons;
  }
}
