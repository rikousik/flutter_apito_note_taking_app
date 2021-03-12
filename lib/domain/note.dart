import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
abstract class Note with _$Note {// freezed syntax
  const factory Note({@required NoteData data, @required String id}) = NoteObj;// constructor for  Note

  const factory Note.data(
      {@required String title,
      @required String note,
      @required int timestamp}) = NoteData;   //constructor for NoteData
  factory Note.empty() =>
      const NoteObj(data: NoteData(note: '', timestamp: 0, title: ''), id: ''); // an object with no data

  const factory Note.list({@required List<NoteObj> notes}) = NoteList;//making a list of noteobject as note object is only capable to contain one data
  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);//this is to retrive data from JSON
}
