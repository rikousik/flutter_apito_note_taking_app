part of 'note_bloc.dart';

@freezed
abstract class NoteState with _$NoteState {
  const factory NoteState(
      {@required NoteList noteList,
      @required bool isLoading,
      @required String errorMsg}) = _NoteState;
  factory NoteState.initial() => const NoteState(
      noteList: NoteList(notes: []), isLoading: false, errorMsg: '');
}
