import 'dart:io';
import 'package:flutter/material.dart';
import 'package:prototyping_kit/themes/android/android_light.dart';

import 'android/android_dark_theme.dart';
import 'ios/ios_light_theme.dart';
import 'ios/ios_dark_theme.dart';

class ThemeResolver {
  static ThemeData light() {
    if (Platform.isIOS) return iosLightTheme;
    return androidLightTheme;
  }

  static ThemeData dark() {
    if (Platform.isIOS) return iosDarkTheme;
    return androidDarkTheme;
  }
}
