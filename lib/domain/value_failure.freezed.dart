// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _ValueFailure call({@required String errorMsg}) {
    return _ValueFailure(
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure {
  String get errorMsg;

  $ValueFailureCopyWith<ValueFailure> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) then) =
      _$ValueFailureCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<$Res> implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure _value;
  // ignore: unused_field
  final $Res Function(ValueFailure) _then;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
abstract class _$ValueFailureCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$ValueFailureCopyWith(
          _ValueFailure value, $Res Function(_ValueFailure) then) =
      __$ValueFailureCopyWithImpl<$Res>;
  @override
  $Res call({String errorMsg});
}

/// @nodoc
class __$ValueFailureCopyWithImpl<$Res> extends _$ValueFailureCopyWithImpl<$Res>
    implements _$ValueFailureCopyWith<$Res> {
  __$ValueFailureCopyWithImpl(
      _ValueFailure _value, $Res Function(_ValueFailure) _then)
      : super(_value, (v) => _then(v as _ValueFailure));

  @override
  _ValueFailure get _value => super._value as _ValueFailure;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_ValueFailure(
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
class _$_ValueFailure implements _ValueFailure {
  const _$_ValueFailure({@required this.errorMsg}) : assert(errorMsg != null);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ValueFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValueFailure &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMsg);

  @override
  _$ValueFailureCopyWith<_ValueFailure> get copyWith =>
      __$ValueFailureCopyWithImpl<_ValueFailure>(this, _$identity);
}

abstract class _ValueFailure implements ValueFailure {
  const factory _ValueFailure({@required String errorMsg}) = _$_ValueFailure;

  @override
  String get errorMsg;
  @override
  _$ValueFailureCopyWith<_ValueFailure> get copyWith;
}
