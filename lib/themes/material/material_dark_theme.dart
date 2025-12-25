import 'package:flutter/material.dart';
import 'package:prototyping_kit/themes/text_themes.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';

final ThemeData androidDarkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: AppTextStyles.fontFamily,
  textTheme: AppTextThemes.dark,

  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryLight,
    brightness: Brightness.dark,
  ),

  scaffoldBackgroundColor: AppColors.gray900,

  appBarTheme: const AppBarTheme(centerTitle: false, elevation: 0),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
    ),
  ),
  
);
