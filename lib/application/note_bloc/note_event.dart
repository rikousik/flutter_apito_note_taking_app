part of 'note_bloc.dart';

@freezed
abstract class NoteEvent with _$NoteEvent {
  const factory NoteEvent.loadNotes() = LoadNotes;//an event that will load the notes from server
}
