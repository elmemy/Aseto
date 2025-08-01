import 'package:flutter/material.dart';
import 'package:aseto/core/localization/account_localization.dart';
import 'package:aseto/core/theme/app_colors.dart';
import 'package:aseto/features/account/controller/create_account_controller.dart';

class CreateAccountService {
  final CreateAccountController controller;

  CreateAccountService({required this.controller});

  void handleSubmit(BuildContext context) {
    controller.submitForm(
      context: context,
      onSuccess: () {
        _showSnackBar(
          context,
          AccountLocalization.successMessage,
          AppColors.success,
        );
      },
      onError: (message) {
        _showSnackBar(context, message, AppColors.error);
      },
    );
  }

  void _showSnackBar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }
}
