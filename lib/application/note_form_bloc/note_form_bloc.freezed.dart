// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

// ignore: unused_element
  CreateNote create({@required NoteObj note}) {
    return CreateNote(
      note: note,
    );
  }

// ignore: unused_element
  UpdateNote update({@required NoteObj note}) {
    return UpdateNote(
      note: note,
    );
  }

// ignore: unused_element
  DeleteNote delete({@required NoteObj note}) {
    return DeleteNote(
      note: note,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  NoteObj get note;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(NoteObj note),
    @required TResult update(NoteObj note),
    @required TResult delete(NoteObj note),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(NoteObj note),
    TResult update(NoteObj note),
    TResult delete(NoteObj note),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateNote value),
    @required TResult update(UpdateNote value),
    @required TResult delete(DeleteNote value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateNote value),
    TResult update(UpdateNote value),
    TResult delete(DeleteNote value),
    @required TResult orElse(),
  });

  $NoteFormEventCopyWith<NoteFormEvent> get copyWith;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
  $Res call({NoteObj note});
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed ? _value.note : note as NoteObj,
    ));
  }
}

/// @nodoc
abstract class $CreateNoteCopyWith<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  factory $CreateNoteCopyWith(
          CreateNote value, $Res Function(CreateNote) then) =
      _$CreateNoteCopyWithImpl<$Res>;
  @override
  $Res call({NoteObj note});
}

/// @nodoc
class _$CreateNoteCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements $CreateNoteCopyWith<$Res> {
  _$CreateNoteCopyWithImpl(CreateNote _value, $Res Function(CreateNote) _then)
      : super(_value, (v) => _then(v as CreateNote));

  @override
  CreateNote get _value => super._value as CreateNote;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(CreateNote(
      note: note == freezed ? _value.note : note as NoteObj,
    ));
  }
}

/// @nodoc
class _$CreateNote implements CreateNote {
  const _$CreateNote({@required this.note}) : assert(note != null);

  @override
  final NoteObj note;

  @override
  String toString() {
    return 'NoteFormEvent.create(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateNote &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  $CreateNoteCopyWith<CreateNote> get copyWith =>
      _$CreateNoteCopyWithImpl<CreateNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(NoteObj note),
    @required TResult update(NoteObj note),
    @required TResult delete(NoteObj note),
  }) {
    assert(create != null);
    assert(update != null);
    assert(delete != null);
    return create(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(NoteObj note),
    TResult update(NoteObj note),
    TResult delete(NoteObj note),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateNote value),
    @required TResult update(UpdateNote value),
    @required TResult delete(DeleteNote value),
  }) {
    assert(create != null);
    assert(update != null);
    assert(delete != null);
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateNote value),
    TResult update(UpdateNote value),
    TResult delete(DeleteNote value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateNote implements NoteFormEvent {
  const factory CreateNote({@required NoteObj note}) = _$CreateNote;

  @override
  NoteObj get note;
  @override
  $CreateNoteCopyWith<CreateNote> get copyWith;
}

/// @nodoc
abstract class $UpdateNoteCopyWith<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  factory $UpdateNoteCopyWith(
          UpdateNote value, $Res Function(UpdateNote) then) =
      _$UpdateNoteCopyWithImpl<$Res>;
  @override
  $Res call({NoteObj note});
}

/// @nodoc
class _$UpdateNoteCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements $UpdateNoteCopyWith<$Res> {
  _$UpdateNoteCopyWithImpl(UpdateNote _value, $Res Function(UpdateNote) _then)
      : super(_value, (v) => _then(v as UpdateNote));

  @override
  UpdateNote get _value => super._value as UpdateNote;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(UpdateNote(
      note: note == freezed ? _value.note : note as NoteObj,
    ));
  }
}

/// @nodoc
class _$UpdateNote implements UpdateNote {
  const _$UpdateNote({@required this.note}) : assert(note != null);

  @override
  final NoteObj note;

  @override
  String toString() {
    return 'NoteFormEvent.update(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateNote &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  $UpdateNoteCopyWith<UpdateNote> get copyWith =>
      _$UpdateNoteCopyWithImpl<UpdateNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(NoteObj note),
    @required TResult update(NoteObj note),
    @required TResult delete(NoteObj note),
  }) {
    assert(create != null);
    assert(update != null);
    assert(delete != null);
    return update(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(NoteObj note),
    TResult update(NoteObj note),
    TResult delete(NoteObj note),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateNote value),
    @required TResult update(UpdateNote value),
    @required TResult delete(DeleteNote value),
  }) {
    assert(create != null);
    assert(update != null);
    assert(delete != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateNote value),
    TResult update(UpdateNote value),
    TResult delete(DeleteNote value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateNote implements NoteFormEvent {
  const factory UpdateNote({@required NoteObj note}) = _$UpdateNote;

  @override
  NoteObj get note;
  @override
  $UpdateNoteCopyWith<UpdateNote> get copyWith;
}

/// @nodoc
abstract class $DeleteNoteCopyWith<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  factory $DeleteNoteCopyWith(
          DeleteNote value, $Res Function(DeleteNote) then) =
      _$DeleteNoteCopyWithImpl<$Res>;
  @override
  $Res call({NoteObj note});
}

/// @nodoc
class _$DeleteNoteCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements $DeleteNoteCopyWith<$Res> {
  _$DeleteNoteCopyWithImpl(DeleteNote _value, $Res Function(DeleteNote) _then)
      : super(_value, (v) => _then(v as DeleteNote));

  @override
  DeleteNote get _value => super._value as DeleteNote;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(DeleteNote(
      note: note == freezed ? _value.note : note as NoteObj,
    ));
  }
}

/// @nodoc
class _$DeleteNote implements DeleteNote {
  const _$DeleteNote({@required this.note}) : assert(note != null);

  @override
  final NoteObj note;

  @override
  String toString() {
    return 'NoteFormEvent.delete(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteNote &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  $DeleteNoteCopyWith<DeleteNote> get copyWith =>
      _$DeleteNoteCopyWithImpl<DeleteNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult create(NoteObj note),
    @required TResult update(NoteObj note),
    @required TResult delete(NoteObj note),
  }) {
    assert(create != null);
    assert(update != null);
    assert(delete != null);
    return delete(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult create(NoteObj note),
    TResult update(NoteObj note),
    TResult delete(NoteObj note),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult create(CreateNote value),
    @required TResult update(UpdateNote value),
    @required TResult delete(DeleteNote value),
  }) {
    assert(create != null);
    assert(update != null);
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult create(CreateNote value),
    TResult update(UpdateNote value),
    TResult delete(DeleteNote value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteNote implements NoteFormEvent {
  const factory DeleteNote({@required NoteObj note}) = _$DeleteNote;

  @override
  NoteObj get note;
  @override
  $DeleteNoteCopyWith<DeleteNote> get copyWith;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

// ignore: unused_element
  _NoteFormState call(
      {@required NoteObj note,
      @required bool isLoading,
      @required String errorMsg,
      @required bool toHomePage}) {
    return _NoteFormState(
      note: note,
      isLoading: isLoading,
      errorMsg: errorMsg,
      toHomePage: toHomePage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  NoteObj get note;
  bool get isLoading;
  String get errorMsg;
  bool get toHomePage;

  $NoteFormStateCopyWith<NoteFormState> get copyWith;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call({NoteObj note, bool isLoading, String errorMsg, bool toHomePage});
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object note = freezed,
    Object isLoading = freezed,
    Object errorMsg = freezed,
    Object toHomePage = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed ? _value.note : note as NoteObj,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
      toHomePage:
          toHomePage == freezed ? _value.toHomePage : toHomePage as bool,
    ));
  }
}

/// @nodoc
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call({NoteObj note, bool isLoading, String errorMsg, bool toHomePage});
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object note = freezed,
    Object isLoading = freezed,
    Object errorMsg = freezed,
    Object toHomePage = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed ? _value.note : note as NoteObj,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
      toHomePage:
          toHomePage == freezed ? _value.toHomePage : toHomePage as bool,
    ));
  }
}

/// @nodoc
class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {@required this.note,
      @required this.isLoading,
      @required this.errorMsg,
      @required this.toHomePage})
      : assert(note != null),
        assert(isLoading != null),
        assert(errorMsg != null),
        assert(toHomePage != null);

  @override
  final NoteObj note;
  @override
  final bool isLoading;
  @override
  final String errorMsg;
  @override
  final bool toHomePage;

  @override
  String toString() {
    return 'NoteFormState(note: $note, isLoading: $isLoading, errorMsg: $errorMsg, toHomePage: $toHomePage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)) &&
            (identical(other.toHomePage, toHomePage) ||
                const DeepCollectionEquality()
                    .equals(other.toHomePage, toHomePage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(errorMsg) ^
      const DeepCollectionEquality().hash(toHomePage);

  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {@required NoteObj note,
      @required bool isLoading,
      @required String errorMsg,
      @required bool toHomePage}) = _$_NoteFormState;

  @override
  NoteObj get note;
  @override
  bool get isLoading;
  @override
  String get errorMsg;
  @override
  bool get toHomePage;
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith;
}
