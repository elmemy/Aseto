import 'package:aseto/core/theme/app_colors.dart';
import 'package:aseto/features/account/service/create_account_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aseto/core/widgets/password_field.dart';
import 'package:aseto/core/widgets/custom_text_field.dart';
import 'package:aseto/core/localization/account_localization.dart';
import 'package:aseto/core/utils/form_validators.dart';
import 'package:aseto/features/account/controller/create_account_controller.dart';
import 'package:aseto/features/account/presentation/widgets/dob_field_widget.dart';
import 'package:aseto/features/account/presentation/widgets/header_section_widget.dart';
import 'package:aseto/features/account/presentation/widgets/login_text_widget.dart';
import 'package:aseto/features/account/presentation/widgets/submit_button_widget.dart';

class CreateAccountForm extends ConsumerWidget {
  const CreateAccountForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(createAccountControllerProvider.notifier);
    final isLoading = ref.watch(createAccountControllerProvider);

    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderSectionWidget(),
          const SizedBox(height: 30),
          CustomTextField(
            controller: controller.fullNameController,
            labelText: AccountLocalization.fullName,
            isRequired: true,
            validator: FormValidators.validateRequired,
          ),
          const SizedBox(height: 12),
          DOBFieldWidget(controller: controller),
          const SizedBox(height: 12),
          CustomTextField(
            controller: controller.emailController,
            labelText: AccountLocalization.email,
            isRequired: true,
            keyboardType: TextInputType.emailAddress,
            validator: FormValidators.validateEmail,
          ),
          const SizedBox(height: 12),
          CustomTextField(
            controller: controller.phoneController,
            labelText: AccountLocalization.phone,
            isRequired: true,
            keyboardType: TextInputType.phone,
            validator: FormValidators.validateRequired,
          ),
          const SizedBox(height: 12),
          PasswordField(
            controller: controller.passwordController,
            labelText: AccountLocalization.password,
            isRequired: true,
            validator: FormValidators.validatePassword,
            showRequiredInSuffix: true,
          ),
          const SizedBox(height: 12),
          PasswordField(
            controller: controller.confirmPasswordController,
            labelText: AccountLocalization.confirmPassword,
            isRequired: true,
            validator: FormValidators.validateRequired,
            showRequiredInSuffix: true,
          ),
          const SizedBox(height: 55),
          SubmitButtonWidget(
            isLoading: isLoading,
            onPressed: () => CreateAccountService(controller: controller).handleSubmit(context),
          ),
          const SizedBox(height: 24),
          const LoginTextWidget(),
        ],
      ),
    );
  }
}
