import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_form/note_form_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Tittle extends StatelessWidget {
  const Tittle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<NoteFormBloc, NoteFormState>(
        listener: (context, state) {
          textEditingController.text = state.note.title;
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: const InputDecoration(
              labelText: 'Note',
              counterText: '',
            ),
            maxLength: 160,
            maxLines: null,
            minLines: 1,
          ),
        ));
  }
}
