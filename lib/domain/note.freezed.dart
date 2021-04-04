// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Note _$NoteFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return NoteObj.fromJson(json);
    case 'data':
      return NoteData.fromJson(json);
    case 'list':
      return NoteList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$NoteTearOff {
  const _$NoteTearOff();

// ignore: unused_element
  NoteObj call(
      {@required NoteData data, @required String id, @required Meta meta}) {
    return NoteObj(
      data: data,
      id: id,
      meta: meta,
    );
  }

// ignore: unused_element
  NoteData data({@required String title, @required String note}) {
    return NoteData(
      title: title,
      note: note,
    );
  }

// ignore: unused_element
  NoteList list({@required List<NoteObj> notes}) {
    return NoteList(
      notes: notes,
    );
  }

// ignore: unused_element
  Note fromJson(Map<String, Object> json) {
    return Note.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Note = _$NoteTearOff();

/// @nodoc
mixin _$Note {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    @required TResult data(String title, String note),
    @required TResult list(List<NoteObj> notes),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    TResult data(String title, String note),
    TResult list(List<NoteObj> notes),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(NoteObj value), {
    @required TResult data(NoteData value),
    @required TResult list(NoteList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(NoteObj value), {
    TResult data(NoteData value),
    TResult list(NoteList value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteCopyWithImpl<$Res> implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  final Note _value;
  // ignore: unused_field
  final $Res Function(Note) _then;
}

/// @nodoc
abstract class $NoteObjCopyWith<$Res> {
  factory $NoteObjCopyWith(NoteObj value, $Res Function(NoteObj) then) =
      _$NoteObjCopyWithImpl<$Res>;
  $Res call({NoteData data, String id, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$NoteObjCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements $NoteObjCopyWith<$Res> {
  _$NoteObjCopyWithImpl(NoteObj _value, $Res Function(NoteObj) _then)
      : super(_value, (v) => _then(v as NoteObj));

  @override
  NoteObj get _value => super._value as NoteObj;

  @override
  $Res call({
    Object data = freezed,
    Object id = freezed,
    Object meta = freezed,
  }) {
    return _then(NoteObj(
      data: data == freezed ? _value.data : data as NoteData,
      id: id == freezed ? _value.id : id as String,
      meta: meta == freezed ? _value.meta : meta as Meta,
    ));
  }

  @override
  $MetaCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

@JsonSerializable()

/// @nodoc
class _$NoteObj implements NoteObj {
  const _$NoteObj({@required this.data, @required this.id, @required this.meta})
      : assert(data != null),
        assert(id != null),
        assert(meta != null);

  factory _$NoteObj.fromJson(Map<String, dynamic> json) =>
      _$_$NoteObjFromJson(json);

  @override
  final NoteData data;
  @override
  final String id;
  @override
  final Meta meta;

  @override
  String toString() {
    return 'Note(data: $data, id: $id, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoteObj &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(meta);

  @override
  $NoteObjCopyWith<NoteObj> get copyWith =>
      _$NoteObjCopyWithImpl<NoteObj>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    @required TResult data(String title, String note),
    @required TResult list(List<NoteObj> notes),
  }) {
    assert($default != null);
    assert(data != null);
    assert(list != null);
    return $default(this.data, id, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    TResult data(String title, String note),
    TResult list(List<NoteObj> notes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this.data, id, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(NoteObj value), {
    @required TResult data(NoteData value),
    @required TResult list(NoteList value),
  }) {
    assert($default != null);
    assert(data != null);
    assert(list != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(NoteObj value), {
    TResult data(NoteData value),
    TResult list(NoteList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NoteObjToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class NoteObj implements Note {
  const factory NoteObj(
      {@required NoteData data,
      @required String id,
      @required Meta meta}) = _$NoteObj;

  factory NoteObj.fromJson(Map<String, dynamic> json) = _$NoteObj.fromJson;

  NoteData get data;
  String get id;
  Meta get meta;
  $NoteObjCopyWith<NoteObj> get copyWith;
}

/// @nodoc
abstract class $NoteDataCopyWith<$Res> {
  factory $NoteDataCopyWith(NoteData value, $Res Function(NoteData) then) =
      _$NoteDataCopyWithImpl<$Res>;
  $Res call({String title, String note});
}

/// @nodoc
class _$NoteDataCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements $NoteDataCopyWith<$Res> {
  _$NoteDataCopyWithImpl(NoteData _value, $Res Function(NoteData) _then)
      : super(_value, (v) => _then(v as NoteData));

  @override
  NoteData get _value => super._value as NoteData;

  @override
  $Res call({
    Object title = freezed,
    Object note = freezed,
  }) {
    return _then(NoteData(
      title: title == freezed ? _value.title : title as String,
      note: note == freezed ? _value.note : note as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$NoteData implements NoteData {
  const _$NoteData({@required this.title, @required this.note})
      : assert(title != null),
        assert(note != null);

  factory _$NoteData.fromJson(Map<String, dynamic> json) =>
      _$_$NoteDataFromJson(json);

  @override
  final String title;
  @override
  final String note;

  @override
  String toString() {
    return 'Note.data(title: $title, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoteData &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(note);

  @override
  $NoteDataCopyWith<NoteData> get copyWith =>
      _$NoteDataCopyWithImpl<NoteData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    @required TResult data(String title, String note),
    @required TResult list(List<NoteObj> notes),
  }) {
    assert($default != null);
    assert(data != null);
    assert(list != null);
    return data(title, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    TResult data(String title, String note),
    TResult list(List<NoteObj> notes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(title, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(NoteObj value), {
    @required TResult data(NoteData value),
    @required TResult list(NoteList value),
  }) {
    assert($default != null);
    assert(data != null);
    assert(list != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(NoteObj value), {
    TResult data(NoteData value),
    TResult list(NoteList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NoteDataToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class NoteData implements Note {
  const factory NoteData({@required String title, @required String note}) =
      _$NoteData;

  factory NoteData.fromJson(Map<String, dynamic> json) = _$NoteData.fromJson;

  String get title;
  String get note;
  $NoteDataCopyWith<NoteData> get copyWith;
}

/// @nodoc
abstract class $NoteListCopyWith<$Res> {
  factory $NoteListCopyWith(NoteList value, $Res Function(NoteList) then) =
      _$NoteListCopyWithImpl<$Res>;
  $Res call({List<NoteObj> notes});
}

/// @nodoc
class _$NoteListCopyWithImpl<$Res> extends _$NoteCopyWithImpl<$Res>
    implements $NoteListCopyWith<$Res> {
  _$NoteListCopyWithImpl(NoteList _value, $Res Function(NoteList) _then)
      : super(_value, (v) => _then(v as NoteList));

  @override
  NoteList get _value => super._value as NoteList;

  @override
  $Res call({
    Object notes = freezed,
  }) {
    return _then(NoteList(
      notes: notes == freezed ? _value.notes : notes as List<NoteObj>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$NoteList implements NoteList {
  const _$NoteList({@required this.notes}) : assert(notes != null);

  factory _$NoteList.fromJson(Map<String, dynamic> json) =>
      _$_$NoteListFromJson(json);

  @override
  final List<NoteObj> notes;

  @override
  String toString() {
    return 'Note.list(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoteList &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notes);

  @override
  $NoteListCopyWith<NoteList> get copyWith =>
      _$NoteListCopyWithImpl<NoteList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    @required TResult data(String title, String note),
    @required TResult list(List<NoteObj> notes),
  }) {
    assert($default != null);
    assert(data != null);
    assert(list != null);
    return list(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(NoteData data, String id, Meta meta), {
    TResult data(String title, String note),
    TResult list(List<NoteObj> notes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(NoteObj value), {
    @required TResult data(NoteData value),
    @required TResult list(NoteList value),
  }) {
    assert($default != null);
    assert(data != null);
    assert(list != null);
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(NoteObj value), {
    TResult data(NoteData value),
    TResult list(NoteList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NoteListToJson(this)..['runtimeType'] = 'list';
  }
}

abstract class NoteList implements Note {
  const factory NoteList({@required List<NoteObj> notes}) = _$NoteList;

  factory NoteList.fromJson(Map<String, dynamic> json) = _$NoteList.fromJson;

  List<NoteObj> get notes;
  $NoteListCopyWith<NoteList> get copyWith;
}
