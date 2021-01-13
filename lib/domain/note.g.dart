// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteObj _$_$NoteObjFromJson(Map<String, dynamic> json) {
  return _$NoteObj(
    title: json['title'] as String,
    note: json['note'] as String,
    timeStamp: json['timeStamp'] as int,
  );
}

Map<String, dynamic> _$_$NoteObjToJson(_$NoteObj instance) => <String, dynamic>{
      'title': instance.title,
      'note': instance.note,
      'timeStamp': instance.timeStamp,
    };

_$NoteList _$_$NoteListFromJson(Map<String, dynamic> json) {
  return _$NoteList(
    notes: (json['notes'] as List)
        ?.map((e) =>
            e == null ? null : NoteObj.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$NoteListToJson(_$NoteList instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };
