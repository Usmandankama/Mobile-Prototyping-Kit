import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../app_text_styles.dart';

final ThemeData iosDarkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: AppTextStyles.fontFamily,

  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryLight,
    surface: AppColors.gray900,
  ),

  scaffoldBackgroundColor: AppColors.gray900,

  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
  ),
);
