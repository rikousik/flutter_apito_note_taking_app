// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NoteEventTearOff {
  const _$NoteEventTearOff();

// ignore: unused_element
  LoadNotes loadNotes() {
    return const LoadNotes();
  }
}

/// @nodoc
// ignore: unused_element
const $NoteEvent = _$NoteEventTearOff();

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadNotes(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadNotes(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadNotes(LoadNotes value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadNotes(LoadNotes value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res> implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  final NoteEvent _value;
  // ignore: unused_field
  final $Res Function(NoteEvent) _then;
}

/// @nodoc
abstract class $LoadNotesCopyWith<$Res> {
  factory $LoadNotesCopyWith(LoadNotes value, $Res Function(LoadNotes) then) =
      _$LoadNotesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadNotesCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res>
    implements $LoadNotesCopyWith<$Res> {
  _$LoadNotesCopyWithImpl(LoadNotes _value, $Res Function(LoadNotes) _then)
      : super(_value, (v) => _then(v as LoadNotes));

  @override
  LoadNotes get _value => super._value as LoadNotes;
}

/// @nodoc
class _$LoadNotes implements LoadNotes {
  const _$LoadNotes();

  @override
  String toString() {
    return 'NoteEvent.loadNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadNotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadNotes(),
  }) {
    assert(loadNotes != null);
    return loadNotes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadNotes(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadNotes != null) {
      return loadNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadNotes(LoadNotes value),
  }) {
    assert(loadNotes != null);
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadNotes(LoadNotes value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadNotes != null) {
      return loadNotes(this);
    }
    return orElse();
  }
}

abstract class LoadNotes implements NoteEvent {
  const factory LoadNotes() = _$LoadNotes;
}

/// @nodoc
class _$NoteStateTearOff {
  const _$NoteStateTearOff();

// ignore: unused_element
  _NoteState call(
      {@required NoteList noteList,
      @required bool isLoading,
      @required String errorMsg}) {
    return _NoteState(
      noteList: noteList,
      isLoading: isLoading,
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NoteState = _$NoteStateTearOff();

/// @nodoc
mixin _$NoteState {
  NoteList get noteList;
  bool get isLoading;
  String get errorMsg;

  $NoteStateCopyWith<NoteState> get copyWith;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res>;
  $Res call({NoteList noteList, bool isLoading, String errorMsg});
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res> implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  final NoteState _value;
  // ignore: unused_field
  final $Res Function(NoteState) _then;

  @override
  $Res call({
    Object noteList = freezed,
    Object isLoading = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      noteList: noteList == freezed ? _value.noteList : noteList as NoteList,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
abstract class _$NoteStateCopyWith<$Res> implements $NoteStateCopyWith<$Res> {
  factory _$NoteStateCopyWith(
          _NoteState value, $Res Function(_NoteState) then) =
      __$NoteStateCopyWithImpl<$Res>;
  @override
  $Res call({NoteList noteList, bool isLoading, String errorMsg});
}

/// @nodoc
class __$NoteStateCopyWithImpl<$Res> extends _$NoteStateCopyWithImpl<$Res>
    implements _$NoteStateCopyWith<$Res> {
  __$NoteStateCopyWithImpl(_NoteState _value, $Res Function(_NoteState) _then)
      : super(_value, (v) => _then(v as _NoteState));

  @override
  _NoteState get _value => super._value as _NoteState;

  @override
  $Res call({
    Object noteList = freezed,
    Object isLoading = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_NoteState(
      noteList: noteList == freezed ? _value.noteList : noteList as NoteList,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
class _$_NoteState implements _NoteState {
  const _$_NoteState(
      {@required this.noteList,
      @required this.isLoading,
      @required this.errorMsg})
      : assert(noteList != null),
        assert(isLoading != null),
        assert(errorMsg != null);

  @override
  final NoteList noteList;
  @override
  final bool isLoading;
  @override
  final String errorMsg;

  @override
  String toString() {
    return 'NoteState(noteList: $noteList, isLoading: $isLoading, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteState &&
            (identical(other.noteList, noteList) ||
                const DeepCollectionEquality()
                    .equals(other.noteList, noteList)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(noteList) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(errorMsg);

  @override
  _$NoteStateCopyWith<_NoteState> get copyWith =>
      __$NoteStateCopyWithImpl<_NoteState>(this, _$identity);
}

abstract class _NoteState implements NoteState {
  const factory _NoteState(
      {@required NoteList noteList,
      @required bool isLoading,
      @required String errorMsg}) = _$_NoteState;

  @override
  NoteList get noteList;
  @override
  bool get isLoading;
  @override
  String get errorMsg;
  @override
  _$NoteStateCopyWith<_NoteState> get copyWith;
}
