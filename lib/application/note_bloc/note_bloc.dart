import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
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
      yield state.copyWith(noteList: noteProvider.getNoteList());
    });
  }
}
