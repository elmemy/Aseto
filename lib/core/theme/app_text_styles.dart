import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppTextStyles {
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontSize: 32,
    fontWeight: FontWeight.w500,
    height: 1.0,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  static const TextStyle subtitleRegular = TextStyle(
    fontFamily: AppFonts.helveticaNeu,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 28 / 18,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );


  static const TextStyle subtitleTextRegular = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 28 / 18,
    letterSpacing: 0,
    color: AppColors.black,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: AppFonts.helveticaNeu,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.0,
    letterSpacing: 0.0,
    color: AppColors.white,
    textBaseline: TextBaseline.alphabetic,
  );

  static const TextStyle alreadyHaveAccountText = TextStyle(
    fontFamily: AppFonts.helveticaNeu,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    height: 1.0,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    color: AppColors.textSecondary,
  );


  static const TextStyle loginLinkText = TextStyle(
    fontFamily: AppFonts.helveticaNeu,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    height: 1.0,
    letterSpacing: 0.0,
    textBaseline: TextBaseline.alphabetic,
    color: AppColors.primary,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  static const TextStyle hintTextStyle = TextStyle(
    fontFamily: AppFonts.helveticaNeu,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.0,
    letterSpacing: 0.02,
    color: AppColors.textSecondary,
  );

  static const TextStyle requiredLabelStyle = TextStyle(
    fontFamily: AppFonts.helveticaNeu,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
    height: 1.0,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  static const TextStyle labelRegular = TextStyle(
    fontFamily: AppFonts.helveticaNeu,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 18,
    height: 1.0,
    letterSpacing: 0.36,
    color: AppColors.textSecondary,
  );


  static const TextStyle labelLarge = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static const TextStyle errorText = TextStyle(
    fontFamily: AppFonts.parabolic,
    fontSize: 12,
    color: AppColors.error,
  );
}
