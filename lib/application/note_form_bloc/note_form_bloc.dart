import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/domain/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final NoteObj note;
  final INoteProvider noteProvider;
  NoteFormBloc({@required this.noteProvider, @required this.note})
      : super(NoteFormState(
            note: note, errorMsg: '', isLoading: false, toHomePage: false));

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(create: (e) async* {
      yield state.copyWith(isLoading: true);
      final Either<ValueFailure, Unit> _response =
          await noteProvider.createNote(note: e.note.data);
      yield _response.fold(
          (l) => state.copyWith(isLoading: false, errorMsg: l.toString()),
          (r) => state.copyWith(isLoading: false, toHomePage: true));
    }, update: (e) async* {
      yield state.copyWith(isLoading: true);
      final Either<ValueFailure, Unit> _response =
          await noteProvider.updateNote(note: e.note);
      yield _response.fold(
          (l) => state.copyWith(isLoading: false, errorMsg: l.toString()),
          (r) => state.copyWith(isLoading: false, toHomePage: true));
    }, delete: (e) async* {
      yield state.copyWith(isLoading: true);
      final Either<ValueFailure, Unit> _response =
          await noteProvider.deleteNote(note: e.note);
      yield _response.fold(
          (l) => state.copyWith(isLoading: false, errorMsg: l.toString()),
          (r) => state.copyWith(isLoading: false, toHomePage: true));
    });
  }
}
