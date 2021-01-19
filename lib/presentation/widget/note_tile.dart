import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/presentation/note_form_page.dart';

import 'neumorphic_container.dart';

class NoteTile extends StatelessWidget {
  final NoteObj note;
  const NoteTile({Key key, this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NoteFormPage(
                    note: note,
                  )),
        );
      },
      child: NeuMorphicContainer(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  note.data.title,
                  style: _theme.textTheme.headline5,
                ),
                Text(
                  "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}",
                  style: _theme.textTheme.headline5.copyWith(
                      color: _theme.textTheme.headline5.color.withOpacity(0.4)),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              note.data.note,
              overflow: TextOverflow.ellipsis,
              style: _theme.textTheme.bodyText1,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
