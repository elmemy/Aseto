import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aseto/core/localization/account_localization.dart';

final createAccountControllerProvider = NotifierProvider<CreateAccountController, bool>(
  CreateAccountController.new,
);

class CreateAccountController extends Notifier<bool> {
  final formKey = GlobalKey<FormState>();

  final fullNameController = TextEditingController();
  final dobController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  bool build() => false; // isLoading

  void toggleLoading(bool value) => state = value;

  void disposeControllers() {
    fullNameController.dispose();
    dobController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

  Future<void> submitForm({
    required BuildContext context,
    required VoidCallback onSuccess,
    required Function(String) onError,
  }) async {
    if (!validateForm()) return;

    if (passwordController.text != confirmPasswordController.text) {
      onError(AccountLocalization.passwordMismatchError);
      return;
    }

    toggleLoading(true);
    try {
      await Future.delayed(const Duration(seconds: 2));
      onSuccess();
    } catch (_) {
      onError(AccountLocalization.errorMessage);
    } finally {
      toggleLoading(false);
    }
  }
}
