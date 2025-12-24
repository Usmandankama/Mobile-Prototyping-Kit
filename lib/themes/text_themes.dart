import 'package:flutter/material.dart';
import 'app_text_styles.dart';
import 'app_colors.dart';

class AppTextThemes {
  static TextTheme light = TextTheme(
    headlineSmall: AppTextStyles.h4.copyWith(color: AppColors.gray700,),
    headlineMedium: AppTextStyles.h2.copyWith(color: AppColors.gray900),
    headlineLarge: AppTextStyles.h1.copyWith(color: AppColors.black),
    bodyLarge: AppTextStyles.bodyL.copyWith(color: AppColors.gray900),
    bodyMedium: AppTextStyles.bodyM.copyWith(color: AppColors.gray700),
    bodySmall: AppTextStyles.bodyS.copyWith(color: AppColors.gray600),
    labelLarge: AppTextStyles.actionL.copyWith(color: AppColors.primary),
    labelMedium: AppTextStyles.actionM.copyWith(color: AppColors.primary),
  );

  static TextTheme dark = TextTheme(
    headlineSmall: AppTextStyles.h4.copyWith(color: Colors.white),
    headlineMedium: AppTextStyles.h3.copyWith(color: Colors.white),
    headlineLarge: AppTextStyles.h1.copyWith(color: Colors.white),

    bodyLarge: AppTextStyles.bodyL.copyWith(color: Colors.white70),
    bodyMedium: AppTextStyles.bodyM.copyWith(color: Colors.white60),
    bodySmall: AppTextStyles.bodyS.copyWith(color: Colors.white54),

    labelLarge: AppTextStyles.actionL.copyWith(color: AppColors.primary),
    labelMedium: AppTextStyles.actionM.copyWith(color: AppColors.primary),
  );
}
