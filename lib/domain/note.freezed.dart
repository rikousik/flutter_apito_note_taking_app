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
      {@required String title,
      @required String note,
      @required int timeStamp}) {
    return NoteObj(
      title: title,
      note: note,
      timeStamp: timeStamp,
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
    TResult $default(String title, String note, int timeStamp), {
    @required TResult list(List<NoteObj> notes),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String title, String note, int timeStamp), {
    TResult list(List<NoteObj> notes),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(NoteObj value), {
    @required TResult list(NoteList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(NoteObj value), {
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
  $Res call({String title, String note, int timeStamp});
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
    Object title = freezed,
    Object note = freezed,
    Object timeStamp = freezed,
  }) {
    return _then(NoteObj(
      title: title == freezed ? _value.title : title as String,
      note: note == freezed ? _value.note : note as String,
      timeStamp: timeStamp == freezed ? _value.timeStamp : timeStamp as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$NoteObj implements NoteObj {
  const _$NoteObj(
      {@required this.title, @required this.note, @required this.timeStamp})
      : assert(title != null),
        assert(note != null),
        assert(timeStamp != null);

  factory _$NoteObj.fromJson(Map<String, dynamic> json) =>
      _$_$NoteObjFromJson(json);

  @override
  final String title;
  @override
  final String note;
  @override
  final int timeStamp;

  @override
  String toString() {
    return 'Note(title: $title, note: $note, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoteObj &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(timeStamp);

  @override
  $NoteObjCopyWith<NoteObj> get copyWith =>
      _$NoteObjCopyWithImpl<NoteObj>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String title, String note, int timeStamp), {
    @required TResult list(List<NoteObj> notes),
  }) {
    assert($default != null);
    assert(list != null);
    return $default(title, note, timeStamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String title, String note, int timeStamp), {
    TResult list(List<NoteObj> notes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(title, note, timeStamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(NoteObj value), {
    @required TResult list(NoteList value),
  }) {
    assert($default != null);
    assert(list != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(NoteObj value), {
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
      {@required String title,
      @required String note,
      @required int timeStamp}) = _$NoteObj;

  factory NoteObj.fromJson(Map<String, dynamic> json) = _$NoteObj.fromJson;

  String get title;
  String get note;
  int get timeStamp;
  $NoteObjCopyWith<NoteObj> get copyWith;
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
    TResult $default(String title, String note, int timeStamp), {
    @required TResult list(List<NoteObj> notes),
  }) {
    assert($default != null);
    assert(list != null);
    return list(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String title, String note, int timeStamp), {
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
    @required TResult list(NoteList value),
  }) {
    assert($default != null);
    assert(list != null);
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(NoteObj value), {
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
