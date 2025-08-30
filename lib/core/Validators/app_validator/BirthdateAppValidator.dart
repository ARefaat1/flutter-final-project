import 'package:flutter_final_project/core/Validators/app_Validator.dart';
import 'package:flutter_final_project/core/utils/app_strings.dart';

class BirthdateAppValidator extends AppValidator {
  BirthdateAppValidator({super.initValue});

  @override
  List<String> check() {
    List<String> reasons = [];

    if (value.isEmpty) {
      reasons.add(AppStrings.birthdateIsRequired);
    }

    try {
      final parts = value.split('/');
      if (parts.length == 3) {
        final day = int.parse(parts[0]);
        final month = int.parse(parts[1]);
        final year = int.parse(parts[2]);
        final date = DateTime(year, month, day);
        if (date.isAfter(DateTime.now())) {
          reasons.add(AppStrings.birthdateNotValid);
        }
      } else {
        reasons.add(AppStrings.birthdateNotValid);
      }
    } catch (_) {
      reasons.add(AppStrings.birthdateNotValid);
    }

    return reasons;
  }
}
