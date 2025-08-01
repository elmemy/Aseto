import 'package:aseto/core/localization/account_localization.dart';
import 'package:aseto/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: AccountLocalization.alreadyHaveAccount,
          style: AppTextStyles.alreadyHaveAccountText,
          children: [
            TextSpan(
              text: AccountLocalization.loginButton,
              style: AppTextStyles.loginLinkText,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
