import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/theme_bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeChangerIcon extends StatelessWidget {
  const ThemeChangerIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return InkWell(
          onTap: () {
            BlocProvider.of<ThemeBloc>(context)
                .add(const ThemeEvent.switchTheme());
          },
          child: Icon(
            Icons.lightbulb_outline_rounded,
            size: 30,
            color: Theme.of(context).colorScheme.primaryVariant,
          ),
        );
      },
    );
  }
}
