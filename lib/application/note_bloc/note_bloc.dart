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
  final INoteProvider noteProvider; //need Inoteprovider to call note getting function
  NoteBloc({
    @required this.noteProvider,
  }) : super(NoteState.initial());// constructor and note state initializer

  @override
  Stream<NoteState> mapEventToState(  //
    NoteEvent event,
  ) async* {
    yield* event.map(loadNotes: (e) async* {
      yield state.copyWith(isLoading: true);//is loading will be true when data will be loaded from server to notelist
      final Either<ValueFailure, NoteList> _noteListResponse =
          await noteProvider.getNoteList();//getting the data in_notelistresponse

      yield _noteListResponse.fold(
          (l) => state.copyWith(isLoading: false, errorMsg: l.toString()),//left if there is an error
          (r) => state.copyWith(isLoading: false, noteList: r));//right if the data is loaded successfully and will turn isLoading to false
    });
  }
}
