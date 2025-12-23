import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';

final ThemeData androidLightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: AppTextStyles.fontFamily,

  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    brightness: Brightness.light,
  ),

  scaffoldBackgroundColor: AppColors.white,

  appBarTheme: const AppBarTheme(
    centerTitle: false,
    elevation: 0,
  ),

  textTheme: TextTheme(
    headlineLarge: AppTextStyles.h1,
    headlineMedium: AppTextStyles.h2,
    bodyLarge: AppTextStyles.bodyL,
    bodyMedium: AppTextStyles.bodyM,
    labelLarge: AppTextStyles.action,
  ),
);
