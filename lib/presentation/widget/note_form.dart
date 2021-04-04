import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/application/note_form_bloc/note_form_bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/custom_snackbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
          CustomSnackBar(context).message(
            message: state.errorMsg,
          );
        }
        if (state.toHomePage) {
          _noteBloc.add(const LoadNotes());
          Navigator.of(context).pop();
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
              'Note Form',
            ),
          ),
          body: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // background
                              onPrimary: Colors.blueGrey, // foreground
                            ),
                            onPressed: () {
                              if (state.note.id.isEmpty) {
                                _noteFormBloc.add(CreateNote(
                                  note: state.note.copyWith(
                                    data: NoteData(
                                      title: _titleController.text,
                                      note: _noteController.text,
                                    ),
                                  ),
                                ));
                              } else {
                                _noteFormBloc.add(UpdateNote(
                                  note: state.note.copyWith(
                                    data: NoteData(
                                      title: _titleController.text,
                                      note: _noteController.text,
                                    ),
                                  ),
                                ));
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.save),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Save',
                                  ),
                                ],
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        if (note.id.isNotEmpty)
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white, // background
                                onPrimary: Colors.blueGrey, // foreground
                              ),
                              onPressed: () {
                                _noteFormBloc.add(DeleteNote(note: state.note));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child:
                                    const Icon(Icons.delete_forever_outlined),
                              )),
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          TextFormField(
                            style: Theme.of(context).textTheme.headline6,
                            controller: _titleController,
                            decoration: const InputDecoration(
                              hintText: 'Title',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                          const Divider(),
                          TextFormField(
                            controller: _noteController,
                            minLines: 15,
                            maxLines: 200,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(color: Colors.grey, height: 1.5),
                            decoration: const InputDecoration(
                              hintText: 'Note',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
