import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../domain/i_theme_provider.dart';

class ThemeProvider extends IThemeProvider {
  final Box localStorage;
  bool _isDark;
  ThemeProvider({@required this.localStorage});

  final ThemeData _darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.grey.shade800,
    primaryColor: Colors.grey.shade800,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    accentColor: Colors.grey.shade200,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 100,
        ),
        textStyle: const TextStyle(fontSize: 18),
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
    ),
  );
  final ThemeData _lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey.shade200,
    primaryColor: Colors.grey.shade200,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    accentColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 100,
        ),
        textStyle: const TextStyle(fontSize: 16),
        side: const BorderSide(
          color: Colors.white,
        ),
      ),
    ),
  );

  @override
  Future<ThemeData> getDarkTheme() async {
    await localStorage.put('theme', true);
    return _darkTheme;
  }

  @override
  Future<ThemeData> getLightTheme() async {
    await localStorage.put('theme', false);
    return _lightTheme;
  }

  @override
  ThemeData getCurrentTheme() {
    _isDark = localStorage.get('theme') as bool ?? false;
    return _isDark ? _darkTheme : _lightTheme;
  }

  @override
  bool isDark() => localStorage.get('theme') as bool ?? false;

  @override
  List<Color> getGradient() {
    if (isDark()) {
      return const [Color(0xFF8983F7), Color(0xFFA3DAFB)];
    } else {
      return const [Color(0xDDFF0080), Color(0xDDFF8C00)];
    }
  }
}
