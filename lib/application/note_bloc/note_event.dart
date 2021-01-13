part of 'note_bloc.dart';

@freezed
abstract class NoteEvent with _$NoteEvent {
  const factory NoteEvent.loadNotes() = LoadNotes;
}
