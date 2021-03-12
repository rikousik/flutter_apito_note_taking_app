part of 'note_bloc.dart';

@freezed
abstract class NoteState with _$NoteState {
  const factory NoteState( //note state with required atributes
      {@required NoteList noteList,
      @required bool isLoading,
      @required String errorMsg}) = _NoteState;
  factory NoteState.initial() => const NoteState(  //inital state of the noteState
      noteList: NoteList(notes: []), isLoading: false, errorMsg: '');
}
