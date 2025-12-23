import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';

final ThemeData androidDarkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: AppTextStyles.fontFamily,

  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryLight,
    brightness: Brightness.dark,
  ),

  scaffoldBackgroundColor: AppColors.gray900,

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
