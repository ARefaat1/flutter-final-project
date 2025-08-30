import 'package:flutter_final_project/core/Validators/app_Validator.dart';
import 'package:flutter_final_project/core/Validators/app_regex.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';

class EmailAppValidator extends AppValidator {
  EmailAppValidator({super.initValue});
  @override
  List<String> check() {
    List<String> reasons = [];

    if (value.isEmpty) {
      reasons.add(AppStrings.emailIsValid);
    }
    if (!AppRegExp.email.hasMatch(value)) {
      reasons.add(AppStrings.emailNotValid);
    }
    return reasons;
  }
}
