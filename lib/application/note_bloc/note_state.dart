part of 'note_bloc.dart';

@freezed
abstract class NoteState with _$NoteState {
  const factory NoteState(
      {@required NoteList noteList, @required int cardIndex}) = _NoteState;
  factory NoteState.initial() =>
      const NoteState(noteList: NoteList(notes: []), cardIndex: 0);
}
