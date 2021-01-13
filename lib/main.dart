import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/application/theme_bloc/theme_bloc.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/infrustructure/note_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'application/app_bloc_observer.dart';
import 'domain/i_theme_provider.dart';
import 'infrustructure/theme_provider.dart';
import 'presentation/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  final Box _localStorage = await Hive.openBox('localStorage');
  Bloc.observer = AppBlocObserver();

  runApp(MyApp(
    localStorage: _localStorage,
  ));
}

class MyApp extends StatelessWidget {
  final Box localStorage;

  const MyApp({Key key, @required this.localStorage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IThemeProvider>(
            create: (context) => ThemeProvider(localStorage: localStorage)),
        RepositoryProvider<INoteProvider>(
          create: (context) => NoteProvider(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<NoteBloc>(
              create: (context) =>
                  NoteBloc(noteProvider: context.read<INoteProvider>())
                    ..add(const LoadNotes())),
          BlocProvider<ThemeBloc>(
              create: (context) =>
                  ThemeBloc(themeProvider: context.read<IThemeProvider>()))
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
                title: 'My Thoughts',
                theme: state.theme,
                home: Scaffold(
                  body: HomePage(),
                ));
          },
        ),
      ),
    );
  }
}
