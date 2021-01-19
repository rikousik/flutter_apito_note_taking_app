import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
abstract class Note with _$Note {
  const factory Note({@required NoteData data, @required String id}) = NoteObj;

  const factory Note.data(
      {@required String title,
      @required String note,
      @required int timestamp}) = NoteData;
  factory Note.empty() =>
      const NoteObj(data: NoteData(note: '', timestamp: 0, title: ''), id: '');

  const factory Note.list({@required List<NoteObj> notes}) = NoteList;
  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
