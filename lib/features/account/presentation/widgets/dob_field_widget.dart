import 'package:aseto/core/localization/account_localization.dart';
import 'package:aseto/core/utils/date_picker_helper.dart';
import 'package:aseto/core/utils/form_validators.dart';
import 'package:aseto/core/widgets/custom_text_field.dart';
import 'package:aseto/features/account/controller/create_account_controller.dart';
import 'package:flutter/material.dart';

class DOBFieldWidget extends StatelessWidget {
  final CreateAccountController controller;

  const DOBFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => DatePickerHelper.showDatePickerDialog(
        context: context,
        onDateSelected: (date) {
          controller.dobController.text = date;
        },
      ),
      child: IgnorePointer(
        child: CustomTextField(
          controller: controller.dobController,
          labelText: AccountLocalization.dob,
          isRequired: true,
          hintText: AccountLocalization.selectDate,
          validator: FormValidators.validateRequired,
        ),
      ),
    );
  }
}
