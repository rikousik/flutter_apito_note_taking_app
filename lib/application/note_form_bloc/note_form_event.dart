part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.create({@required NoteObj note}) = CreateNote;
  const factory NoteFormEvent.update({@required NoteObj note}) = UpdateNote;
  const factory NoteFormEvent.delete({@required NoteObj note}) = DeleteNote;
}
