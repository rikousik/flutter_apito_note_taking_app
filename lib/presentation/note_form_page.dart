import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_form_bloc/note_form_bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormPage extends StatelessWidget {
  final NoteObj note;
  const NoteFormPage({Key key, this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NoteFormBloc(note: note, noteProvider: context.read<INoteProvider>()),
      child: NoteForm(
        note: note,
      ),
    );
  }
}
