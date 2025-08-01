import 'package:aseto/core/localization/account_localization.dart';
import 'package:aseto/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class HeaderSectionWidget extends StatelessWidget {
  const HeaderSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AccountLocalization.createAccountTitle,
          style: AppTextStyles.headlineMedium,
        ),
        const SizedBox(height: 7),
        Text(
          AccountLocalization.createAccountSubtitle,
          style: AppTextStyles.subtitleRegular,
        ),
      ],
    );
  }
}
