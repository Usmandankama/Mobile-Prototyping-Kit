import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';

final ThemeData iosLightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  fontFamily: AppTextStyles.fontFamily,

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
