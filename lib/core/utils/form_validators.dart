import 'package:aseto/core/localization/account_localization.dart';

class FormValidators {
  static String? validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return AccountLocalization.requiredField;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return AccountLocalization.requiredField;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return AccountLocalization.invalidEmail;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AccountLocalization.requiredField;
    }
    if (value.length < 8) {
      return AccountLocalization.passwordMinLength;
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return AccountLocalization.passwordUppercase;
    }
    return null;
  }

}