import 'package:aseto/core/theme/app_colors.dart';
import 'package:aseto/core/theme/app_text_styles.dart';
import 'package:aseto/core/utils/decoration_helper.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool isRequired;
  final void Function(String)? onChanged;
  final TextStyle? hintStyle;
  final bool showRequiredInLabel;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.isRequired = false,
    this.onChanged,
    this.hintStyle,
    this.showRequiredInLabel = true,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()
      ..addListener(() {
        setState(() {
          _hasFocus = _focusNode.hasFocus;
        });
      });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: _hasFocus ? AppColors.primary : AppColors.borderColor,
          width: 1,
        ),
        color: _hasFocus
            ? AppColors.textFieldFocusedBackground
            : AppColors.white,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(
        controller: widget.controller,
        focusNode: _focusNode,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        validator: widget.validator,
        onChanged: widget.onChanged,
        style: AppTextStyles.subtitleTextRegular,
        decoration: DecorationHelper.customInputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          hintStyle: widget.hintStyle,
          isRequired: widget.isRequired,
          showRequiredInLabel: widget.showRequiredInLabel,
          hasFocus: _hasFocus,
        ),
      ),
    );
  }
}
