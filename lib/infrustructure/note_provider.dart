import 'package:dartz/dartz.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/domain/value_failure.dart';

class NoteProvider extends INoteProvider {
  final String _baseUrl = "https://api.apito.io/secured/rest/my_thoughts_0pm0e";
  final String _token =
      "6rZAmjwaAxXaFQa3H0l4x8007FUxxbpwBzZzcPDxXRORU0TQsCP6lyXMz4cuP1vpOGoGMAJJ9MdSonKeXha8QDJBM1Gb7KBgCdg58n8rhBStvYphk6uqOgBP4q6FDRGNXUs2CI7f9AFZkACpZIp78WQ7cgVP4EJ";

  @override
  Future<Either<ValueFailure, NoteList>> getNoteList() {
    const String _demo =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    const List<NoteObj> _cardsList = [
      NoteObj(title: 'Home', note: _demo, timeStamp: 12),
      NoteObj(title: 'Personal', note: _demo, timeStamp: 12),
      NoteObj(title: 'Work', note: _demo, timeStamp: 12),
    ];

    return const NoteList(notes: _cardsList);
  }
}
