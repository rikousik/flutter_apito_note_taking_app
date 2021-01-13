import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/i_theme_provider.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final IThemeProvider themeProvider;
  ThemeBloc({@required this.themeProvider})
      : super(ThemeState(
            theme: themeProvider.getCurrentTheme(),
            gradient: themeProvider.getGradient(),
            isDark: themeProvider.isDark()));

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(switchTheme: (e) async* {
      yield ThemeState(
          isDark: themeProvider.isDark(),
          gradient: themeProvider.getGradient(),
          theme: themeProvider.isDark()
              ? await themeProvider.getLightTheme()
              : await themeProvider.getDarkTheme());
    });
  }
}
