import 'package:flutter/material.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/presentation/note_form_page.dart';

class NoteTile extends StatelessWidget {
  final NoteObj note;
  const NoteTile({Key key, this.note}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final DateTime createdAt = note.meta.createdAt;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NoteFormPage(
                    note: note,
                  )),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    note.data.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "${createdAt.day}-${createdAt.month}-${createdAt.year}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                note.data.note,
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.grey, fontWeight: FontWeight.normal),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
