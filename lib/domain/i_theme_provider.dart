import 'package:flutter/material.dart';

abstract class IThemeProvider {
  Future<ThemeData> getDarkTheme();
  Future<ThemeData> getLightTheme();
  ThemeData getCurrentTheme();
  List<Color> getGradient();
  bool isDark();
}
