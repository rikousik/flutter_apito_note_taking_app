import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/neumorphic_container.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/note_tile.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/theme_changer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'note_form_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return BlocConsumer<NoteBloc, NoteState>(
      listenWhen: (p, c) =>
          p.isLoading != c.isLoading || p.errorMsg != c.errorMsg,
      listener: (context, state) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
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
                'My Thoughts',
                style: _theme.textTheme.headline4,
              ),
            ),
            bottomNavigationBar: NeuMorphicContainer(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NoteFormPage(
                              note: Note.empty() as NoteObj,
                            )),
                  );
                },
                child: Text(
                  'Add Note',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            body: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Write whatever your mind says\nand save it to Apito",
                    style: _theme.textTheme.subtitle1,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.noteList.notes.length,
                      itemBuilder: (context, index) => NoteTile(
                            note: state.noteList.notes[index],
                          ))
                ],
              ),
            ));
      },
    );
  }
}
