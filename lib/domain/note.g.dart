// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteObj _$_$NoteObjFromJson(Map<String, dynamic> json) {
  return _$NoteObj(
    data: json['data'] == null
        ? null
        : NoteData.fromJson(json['data'] as Map<String, dynamic>),
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$NoteObjToJson(_$NoteObj instance) => <String, dynamic>{
      'data': instance.data?.toJson(),
      'id': instance.id,
    };

_$NoteData _$_$NoteDataFromJson(Map<String, dynamic> json) {
  return _$NoteData(
    title: json['title'] as String,
    note: json['note'] as String,
    timestamp: json['timestamp'] as int,
  );
}

Map<String, dynamic> _$_$NoteDataToJson(_$NoteData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'note': instance.note,
      'timestamp': instance.timestamp,
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
      'notes': instance.notes?.map((e) => e?.toJson())?.toList(),
    };
