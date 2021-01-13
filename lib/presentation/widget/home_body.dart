import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/application/note_bloc/note_bloc.dart';
import 'package:flutter_apito_note_taking_app/application/theme_bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'neumorphic_container.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NoteBloc _noteBloc = BlocProvider.of<NoteBloc>(context);
    final ThemeBloc _themeBloc = BlocProvider.of<ThemeBloc>(context);
    final ThemeData _theme = Theme.of(context);
    return BlocConsumer<NoteBloc, NoteState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
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
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _themeBloc.add(const ThemeEvent.switchTheme());
                      },
                      child: NeuMorphicContainer(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.noteList.notes[index].title,
                                  style: _theme.textTheme.headline5,
                                ),
                                Text(
                                  "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
                                  style: _theme.textTheme.headline5.copyWith(
                                      color: _theme.textTheme.headline5.color
                                          .withOpacity(0.4)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              state.noteList.notes[index].note,
                              overflow: TextOverflow.ellipsis,
                              style: _theme.textTheme.bodyText1,
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        );
      },
    );
  }
}
