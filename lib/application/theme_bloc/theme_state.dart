part of 'theme_bloc.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState(
      {@required ThemeData theme,
      @required bool isDark,
      List<Color> gradient}) = Data;
}
