import 'package:flutter/material.dart';

import 'package:flutter_final_project/core/Validators/app_Validator.dart';

FormFieldValidator<String> useValidator(AppValidator validator) {
  return (val) {
    validator.setValue(val ?? "");
    return validator.isValid ? null : validator.reasons.join("\n");
  };
}
