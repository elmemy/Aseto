import 'package:flutter/material.dart';
import 'package:aseto/core/theme/app_colors.dart';
import 'package:aseto/core/theme/app_text_styles.dart';
import 'package:aseto/core/localization/account_localization.dart';

class DecorationHelper {
  static InputDecoration customInputDecoration({
    required String labelText,
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    TextStyle? hintStyle,
    bool isRequired = false,
    bool showRequiredInLabel = true,
    bool hasFocus = false,
  }) {
    return InputDecoration(
      border: InputBorder.none,
      isDense: true,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      hintText: hintText,
      hintStyle: hintStyle ?? AppTextStyles.hintTextStyle,
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            labelText,
            style: AppTextStyles.labelRegular.copyWith(
              color: hasFocus ? AppColors.primary : AppColors.textSecondary,
            ),
          ),
          if (isRequired && showRequiredInLabel && !hasFocus)
            Text(
              AccountLocalization.required,
              style: AppTextStyles.requiredLabelStyle,
            ),
        ],
      ),
    );
  }
}
