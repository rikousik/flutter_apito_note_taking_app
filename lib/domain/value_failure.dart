import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure with _$ValueFailure {
  const factory ValueFailure({@required String errorMsg}) = _ValueFailure;
}
