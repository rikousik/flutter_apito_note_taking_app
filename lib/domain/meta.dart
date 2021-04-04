import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    @required @JsonKey(name: 'created_at') DateTime createdAt,
    @required @JsonKey(name: 'updated_at') DateTime updatedAt,
  }) = _Meta;

  factory Meta.empty() =>
      Meta(createdAt: DateTime.now(), updatedAt: DateTime.now());
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
