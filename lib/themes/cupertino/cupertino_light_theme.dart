import 'package:flutter/material.dart';
import 'package:prototyping_kit/themes/text_themes.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';

final ThemeData iosLightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: AppTextStyles.fontFamily,
  textTheme: AppTextThemes.light,

  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    surface: AppColors.white,
  ),

  scaffoldBackgroundColor: AppColors.white,

  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
  ),
);
