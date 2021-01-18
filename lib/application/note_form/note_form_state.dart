part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    @required NoteData note,
    @required bool isEditing,
    @required bool isSaving,
  }) = _NoteFormState;
  factory NoteFormState.initial() => NoteFormState(
      note: const NoteData(title: "", note: "", timestamp: 0),
      isEditing: false,
      isSaving: false);
}
