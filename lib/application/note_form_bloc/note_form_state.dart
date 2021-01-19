part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormState with _$NoteFormState {
  const factory NoteFormState(
      {@required NoteObj note,
      @required bool isLoading,
      @required String errorMsg,
      @required bool toHomePage}) = _NoteFormState;
}
