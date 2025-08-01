import 'package:aseto/core/localization/account_localization.dart';
import 'package:aseto/core/theme/app_button_styles.dart';
import 'package:aseto/core/theme/app_colors.dart';
import 'package:aseto/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;

  const SubmitButtonWidget({super.key, required this.onPressed, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: AppButtonStyles.primary,
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? CircularProgressIndicator(color: AppColors.white)
            : Text(
          AccountLocalization.continueButton,
          style: AppTextStyles.buttonText,
        ),
      ),
    );
  }
}
