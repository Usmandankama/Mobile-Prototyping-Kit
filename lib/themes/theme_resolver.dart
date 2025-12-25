import 'dart:io';
import 'package:flutter/material.dart';
import 'package:prototyping_kit/themes/material/material_light.dart';

import 'material/material_dark_theme.dart';
import 'cupertino/cupertino_light_theme.dart';
import 'cupertino/cupertino_dark_theme.dart';

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
