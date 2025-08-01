import 'package:aseto/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static final TextStyle headlineMedium = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontSize: 32,
    fontWeight: FontWeight.w500,
    height: 1.0,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle subtitleRegular = TextStyle(
    fontFamily: FontFamily.helveticaNeue,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 28 / 18,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );


  static const TextStyle subtitleTextRegular = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 28 / 18,
    letterSpacing: 0,
    color: AppColors.black,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: FontFamily.helveticaNeue,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.white,
    textBaseline: TextBaseline.alphabetic,
  );

  static const TextStyle alreadyHaveAccountText = TextStyle(
    fontFamily: FontFamily.helveticaNeue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 1.0,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    color: AppColors.textSecondary,
  );


  static const TextStyle loginLinkText = TextStyle(
    fontFamily: FontFamily.helveticaNeue,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.0,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    color: AppColors.primary,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static const TextStyle hintTextStyle = TextStyle(
    fontFamily: FontFamily.helveticaNeue,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.0,
    letterSpacing: 0.02,
    color: AppColors.textSecondary,
  );

  static const TextStyle requiredLabelStyle = TextStyle(
    fontFamily: FontFamily.helveticaNeue,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    height: 1.0,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  static const TextStyle labelRegular = TextStyle(
    fontFamily: FontFamily.helveticaNeue,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 18,
    height: 1.0,
    letterSpacing: 0.36,
    color: AppColors.textSecondary,
  );


  static const TextStyle labelLarge = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static const TextStyle errorText = TextStyle(
    fontFamily: FontFamily.parabolica,
    fontSize: 12,
    color: AppColors.error,
  );
}
