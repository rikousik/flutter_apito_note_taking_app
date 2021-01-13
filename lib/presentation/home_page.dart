import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/application/theme_bloc/theme_bloc.dart';
import 'package:flutter_apito_note_taking_app/presentation/widget/home_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'card_item_model.dart';

class HomePage extends StatelessWidget {
  final List<CardItemModel> cardsList = [
    CardItemModel("Personal", Icons.account_circle, 9, 0.83),
    CardItemModel("Work", Icons.work, 12, 0.24),
    CardItemModel("Home", Icons.home, 7, 0.32)
  ];

  @override
  Widget build(BuildContext context) {
    final NoteBloc _noteBloc = BlocProvider.of<NoteBloc>(context);
    final ThemeBloc _themeBloc = BlocProvider.of<ThemeBloc>(context);
    final ThemeData _theme = Theme.of(context);

    final double _width = MediaQuery.of(context).size.width;

    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  onPressed: () {
                    _themeBloc.add(const ThemeEvent.switchTheme());
                  },
                  icon: Icon(
                    Icons.lightbulb_outline_rounded,
                    color: context.select((ThemeBloc t) => t.state.isDark)
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
              )
            ],
            title: Text(
              'My Thoughts',
              style: _theme.textTheme.headline4,
            ),
          ),
          body: const HomeBody());
    });
  }
}
