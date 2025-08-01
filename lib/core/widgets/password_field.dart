import 'package:aseto/core/localization/account_localization.dart';
import 'package:aseto/core/theme/app_colors.dart';
import 'package:aseto/core/theme/app_text_styles.dart';
import 'package:aseto/generation/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'custom_text_field.dart';

class PasswordField extends StatefulWidget {
  final String labelText;
  final TextEditingController? controller;
  final bool isRequired;
  final String? Function(String?)? validator;
  final bool showRequiredInSuffix;

  const PasswordField({
    super.key,
    required this.labelText,
    this.controller,
    this.isRequired = false,
    this.validator,
    this.showRequiredInSuffix = false,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _toggle() => setState(() => _obscureText = !_obscureText);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      labelText: widget.labelText,
      controller: widget.controller,
      isRequired: widget.isRequired,
      obscureText: _obscureText,
      validator: widget.validator,
      showRequiredInLabel: !widget.showRequiredInSuffix,
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: _toggle,
            icon: SvgPicture.asset(
              _obscureText ? Assets.images.hide.path : Assets.images.view.path,
              height: 21,
              colorFilter: const ColorFilter.mode(
                AppColors.iconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          if (widget.showRequiredInSuffix && widget.isRequired)
            Text(
              AccountLocalization.required,
              style: AppTextStyles.requiredLabelStyle,
            ),
        ],
      ),
    );
  }
}
