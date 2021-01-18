import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteProvider _noteProvider;
  NoteFormBloc(this._noteProvider) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(
    NoteFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialNoteOption.fold(
          () => state,
          (initialNote) => state.copyWith(
                note: initialNote,
                isEditing: true,
              ));
    }, bodyChanged: (e) async* {
      final NoteData _note = state.note.copyWith(note: e.bodyStr);
      yield state.copyWith(note: _note);
    }, saved: (e) async* {
      yield state.copyWith(
        isSaving: true,
      );
      try {
        await _noteProvider.createNote(note: state.note);
      } catch (e) {}
    });
  }
}
