import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_form/note_form_bloc.dart';
import 'package:flutter_apito_note_taking_app/presentation/note_form/widgets/body_field_widget.dart';
import 'package:flutter_apito_note_taking_app/presentation/note_form/widgets/tittle_field_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a note'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              //context.bloc<NoteFormBloc>().add(const NoteFormEvent.saved());
            },
          )
        ],
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        builder: (context, state) {
          return Form(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Tittle(),
                  const BodyField(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
