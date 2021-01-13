// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

// ignore: unused_element
  SwitchTheme switchTheme() {
    return const SwitchTheme();
  }
}

/// @nodoc
// ignore: unused_element
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult switchTheme(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult switchTheme(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult switchTheme(SwitchTheme value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult switchTheme(SwitchTheme value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class $SwitchThemeCopyWith<$Res> {
  factory $SwitchThemeCopyWith(
          SwitchTheme value, $Res Function(SwitchTheme) then) =
      _$SwitchThemeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchThemeCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements $SwitchThemeCopyWith<$Res> {
  _$SwitchThemeCopyWithImpl(
      SwitchTheme _value, $Res Function(SwitchTheme) _then)
      : super(_value, (v) => _then(v as SwitchTheme));

  @override
  SwitchTheme get _value => super._value as SwitchTheme;
}

/// @nodoc
class _$SwitchTheme implements SwitchTheme {
  const _$SwitchTheme();

  @override
  String toString() {
    return 'ThemeEvent.switchTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SwitchTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult switchTheme(),
  }) {
    assert(switchTheme != null);
    return switchTheme();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult switchTheme(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (switchTheme != null) {
      return switchTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult switchTheme(SwitchTheme value),
  }) {
    assert(switchTheme != null);
    return switchTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult switchTheme(SwitchTheme value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (switchTheme != null) {
      return switchTheme(this);
    }
    return orElse();
  }
}

abstract class SwitchTheme implements ThemeEvent {
  const factory SwitchTheme() = _$SwitchTheme;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

// ignore: unused_element
  Data call(
      {@required ThemeData theme,
      @required bool isDark,
      List<Color> gradient}) {
    return Data(
      theme: theme,
      isDark: isDark,
      gradient: gradient,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  ThemeData get theme;
  bool get isDark;
  List<Color> get gradient;

  $ThemeStateCopyWith<ThemeState> get copyWith;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeData theme, bool isDark, List<Color> gradient});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object theme = freezed,
    Object isDark = freezed,
    Object gradient = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed ? _value.theme : theme as ThemeData,
      isDark: isDark == freezed ? _value.isDark : isDark as bool,
      gradient: gradient == freezed ? _value.gradient : gradient as List<Color>,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData theme, bool isDark, List<Color> gradient});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object theme = freezed,
    Object isDark = freezed,
    Object gradient = freezed,
  }) {
    return _then(Data(
      theme: theme == freezed ? _value.theme : theme as ThemeData,
      isDark: isDark == freezed ? _value.isDark : isDark as bool,
      gradient: gradient == freezed ? _value.gradient : gradient as List<Color>,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data({@required this.theme, @required this.isDark, this.gradient})
      : assert(theme != null),
        assert(isDark != null);

  @override
  final ThemeData theme;
  @override
  final bool isDark;
  @override
  final List<Color> gradient;

  @override
  String toString() {
    return 'ThemeState(theme: $theme, isDark: $isDark, gradient: $gradient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.theme, theme) ||
                const DeepCollectionEquality().equals(other.theme, theme)) &&
            (identical(other.isDark, isDark) ||
                const DeepCollectionEquality().equals(other.isDark, isDark)) &&
            (identical(other.gradient, gradient) ||
                const DeepCollectionEquality()
                    .equals(other.gradient, gradient)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(theme) ^
      const DeepCollectionEquality().hash(isDark) ^
      const DeepCollectionEquality().hash(gradient);

  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements ThemeState {
  const factory Data(
      {@required ThemeData theme,
      @required bool isDark,
      List<Color> gradient}) = _$Data;

  @override
  ThemeData get theme;
  @override
  bool get isDark;
  @override
  List<Color> get gradient;
  @override
  $DataCopyWith<Data> get copyWith;
}
