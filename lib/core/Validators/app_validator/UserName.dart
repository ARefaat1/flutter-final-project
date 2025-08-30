import 'package:flutter_final_project/core/Validators/app_Validator.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';

class UsernameAppValidator extends AppValidator {
  UsernameAppValidator({super.initValue});

  @override
  List<String> check() {
    List<String> reasons = [];

    if (value.isEmpty) {
      reasons.add(AppStrings.usernameIsRequired);
    } else if (value.length < 3) {
      reasons.add(AppStrings.Usernamemustbetleast3characters);
    }

    return reasons;
  }
}
