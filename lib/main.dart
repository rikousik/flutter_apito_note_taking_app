import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/infrustructure/note_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/app_bloc_observer.dart';
import 'presentation/home_page.dart';

Future<void> main() async {
  Bloc.observer = AppBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<INoteProvider>(
      create: (context) => NoteProvider(),
      child: BlocProvider<NoteBloc>(
        create: (context) =>
            NoteBloc(noteProvider: context.read<INoteProvider>())
              ..add(const LoadNotes()),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Apito Note',
            home: Scaffold(
              body: HomePage(),
            )),
      ),
    );
  }
}
