import 'package:flutter/material.dart';
import 'package:prototyping_kit/themes/text_themes.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';

final ThemeData androidLightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: AppTextStyles.fontFamily,
  textTheme: AppTextThemes.light,


  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    brightness: Brightness.light,
  ),

  scaffoldBackgroundColor: AppColors.white,

  appBarTheme: const AppBarTheme(centerTitle: false, elevation: 0),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.gray900,
    ),
  ),

);
