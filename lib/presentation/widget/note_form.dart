import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/application/note_form_bloc/note_form_bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/neumorphic_textfield.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/theme_changer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'neumorphic_container.dart';

class NoteForm extends HookWidget {
  final NoteObj note;
  const NoteForm({
    @required this.note,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final NoteFormBloc _noteFormBloc = BlocProvider.of<NoteFormBloc>(context);
    final NoteBloc _noteBloc = BlocProvider.of<NoteBloc>(context);

    final TextEditingController _noteController =
        useTextEditingController(text: note.data.note);
    final TextEditingController _titleController =
        useTextEditingController(text: note.data.title);
    return BlocConsumer<NoteFormBloc, NoteFormState>(
      listenWhen: (p, c) =>
          p.isLoading != c.isLoading || p.errorMsg != c.errorMsg,
      listener: (context, state) {
        if (state.errorMsg.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 6.0,
            backgroundColor: Colors.redAccent,
            behavior: SnackBarBehavior.floating,
            content: Text(
              state.errorMsg,
              style: const TextStyle(color: Colors.white),
            ),
          ));
        }
        if (state.toHomePage) {
          _noteBloc.add(const LoadNotes());
          Navigator.of(context).pop();
        }

        if (state.isLoading) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 6.0,
            behavior: SnackBarBehavior.floating,
            content: Row(
              children: const [
                CircularProgressIndicator(),
                SizedBox(
                  width: 20,
                ),
                Text("  Loading ...")
              ],
            ),
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: const [ThemeChangerIcon()],
            title: Text(
              'Note Form',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          bottomNavigationBar: note.id.isEmpty
              ? NeuMorphicContainer(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: TextButton(
                    onPressed: () {
                      _noteFormBloc.add(CreateNote(
                          note: NoteObj(
                              data: NoteData(
                                  title: _titleController.text,
                                  note: _noteController.text,
                                  timestamp:
                                      DateTime.now().millisecondsSinceEpoch),
                              id: '')));
                    },
                    child: Text(
                      'Add Note',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NeuMorphicContainer(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: TextButton(
                        onPressed: () {
                          _noteFormBloc.add(UpdateNote(
                              note: NoteObj(
                                  data: NoteData(
                                      title: _titleController.text,
                                      note: _noteController.text,
                                      timestamp: DateTime.now()
                                          .millisecondsSinceEpoch),
                                  id: note.id)));
                        },
                        child: Text(
                          'Update Note',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ),
                    NeuMorphicContainer(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: TextButton(
                        onPressed: () {
                          _noteFormBloc.add(DeleteNote(
                              note: NoteObj(
                                  data: NoteData(
                                      title: _titleController.text,
                                      note: _noteController.text,
                                      timestamp: DateTime.now()
                                          .millisecondsSinceEpoch),
                                  id: note.id)));
                        },
                        child: Icon(
                          Icons.delete,
                          color: Theme.of(context).colorScheme.primaryVariant,
                        ),
                      ),
                    ),
                  ],
                ),
          body: Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  NeumorphicTextField(
                    controller: _titleController,
                    hint: 'Title',
                  ),
                  NeumorphicTextField(
                    controller: _noteController,
                    hint: 'Note',
                    minLine: 25,
                    maxLength: 500,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
