import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/custom_snackbar.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/note_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'note_form_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteBloc, NoteState>(
      listenWhen: (p, c) =>
          p.isLoading != c.isLoading || p.errorMsg != c.errorMsg,
      listener: (context, state) {
        CustomSnackBar(context).hide();
        if (state.errorMsg.isNotEmpty) {
          CustomSnackBar(context).message(message: state.errorMsg);
        }

        if (state.isLoading) {
          CustomSnackBar(context).loading();
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFD6E4EE),
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: const Text(
              'Apito Note',
            ),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.noteList.notes.length,
                itemBuilder: (context, index) => NoteTile(
                      note: state.noteList.notes[index],
                    )),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NoteFormPage(
                          note: Note.empty() as NoteObj,
                        )),
              );
            },
            tooltip: 'Add Note',
            backgroundColor: Colors.redAccent,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
