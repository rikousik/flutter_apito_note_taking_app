import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/domain/value_failure.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NoteProvider extends INoteProvider {
  final String _baseUrl = "https://api.apito.io/secured/rest/my_thoughts_0pm0e";
  final String _token =
      "Bearer 6rZAmjwaAxXaFQa3H0l4x8007FUxxbpwBzZzcPDxXRORU0TQsCP6lyXMz4cuP1vpOGoGMAJJ9MdSonKeXha8QDJBM1Gb7KBgCdg58n8rhBStvYphk6uqOgBP4q6FDRGNXUs2CI7f9AFZkACpZIp78WQ7cgVP4EJ";

  @override
  Future<Either<ValueFailure, NoteList>> getNoteList() async {
    try {
      final http.Response _response =
          await http.get("$_baseUrl/notes", headers: {
        'Authorization': _token, // set content-length
        'Content': 'application/json'
      });

      final List<dynamic> _noteResponse =
          jsonDecode(_response.body) as List<dynamic>;

      final List<NoteObj> _notes = List<NoteObj>.from(_noteResponse
          .map((e) => NoteObj.fromJson(e as Map<String, dynamic>)));
      return right(NoteList(notes: _notes));
    } catch (e) {
      return left(ValueFailure(errorMsg: e.toString()));
    }
  }

  @override
  Future<Either<ValueFailure, Unit>> createNote({NoteData note}) async {
    try {
      final String url = '$_baseUrl/notes';

      final Map<String, String> headers = {
        'Authorization': _token, // set content-length
        'Content': 'application/json'
      };
      final Response response = await http.put(url,
          headers: headers, body: jsonEncode(note.toJson()));
      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(ValueFailure(errorMsg: response.body));
      }
    } catch (e) {
      return left(ValueFailure(errorMsg: e.toString()));
    }
  }

  @override
  Future<Either<ValueFailure, Unit>> deleteNote({NoteObj note}) async {
    try {
      final String url = '$_baseUrl/notes?_id=${note.id}';
      final Map<String, String> headers = {
        'Authorization': _token, // set content-length
        'Content': 'application/json'
      };
      final Response response = await http.delete(url, headers: headers);
      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(ValueFailure(errorMsg: response.body));
      }
    } catch (e) {
      return left(ValueFailure(errorMsg: e.toString()));
    }
  }

  @override
  Future<Either<ValueFailure, Unit>> updateNote({NoteObj note}) async {
    try {
      final String url = '$_baseUrl/notes?_id=${note.id}';
      final Map<String, String> headers = {
        'Authorization': _token, // set content-length
        'Content': 'application/json'
      };
      final Response response = await http.post(url,
          headers: headers, body: jsonEncode(note.data.toJson()));
      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(ValueFailure(errorMsg: response.body));
      }
    } catch (e) {
      return left(ValueFailure(errorMsg: e.toString()));
    }
  }
}
