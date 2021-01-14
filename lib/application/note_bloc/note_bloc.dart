import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/domain/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/note.dart';

part 'note_bloc.freezed.dart';
part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final INoteProvider noteProvider;
  NoteBloc({
    @required this.noteProvider,
  }) : super(NoteState.initial());

  @override
  Stream<NoteState> mapEventToState(
    NoteEvent event,
  ) async* {
    yield* event.map(loadNotes: (e) async* {
      final Either<ValueFailure, NoteList> _noteListResponse =
          await noteProvider.getNoteList();

      yield _noteListResponse.fold((l) {
        print(l);
        return state;
      }, (r) => state.copyWith(noteList: r));
    });
  }
}
