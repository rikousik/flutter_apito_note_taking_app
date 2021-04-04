import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_apito_note_taking_app/domain/i_note_provider.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/domain/value_failure.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NoteProvider extends INoteProvider {
  final String _baseUrl = '';
  final String _token = '';

  @override
  Future<Either<ValueFailure, NoteList>> getNoteList() async {
    // Function that will request note list from restAPI The output will be value or value failure
    try {
      final http.Response _response =
          await http.get("$_baseUrl/notes?meta=true", headers: {
        //will get the data from /notes
        'Authorization': _token, // set content-length
        'Content': 'application/json'
      });

      final List<dynamic> _noteResponse = jsonDecode(_response.body) as List<
          dynamic>; //response is being saved in _noteresponse which will be a list of data

      final List<NoteObj> _notes = List<NoteObj>.from(
          _noteResponse // data from dynamic noteresponse list to _notes noteObject data type variable
              .map((e) => NoteObj.fromJson(e as Map<String, dynamic>)));
      return right(NoteList(
          notes: _notes)); // _notes private variable to predeclared list notes
    } catch (e) {
      return left(ValueFailure(
          errorMsg: e.toString())); //if value failure ...show error message
    }
  }

  @override
  Future<Either<ValueFailure, Unit>> createNote({NoteData note}) async {
    //function that will create note
    try {
      final String url = '$_baseUrl/notes'; //assigning api to a variable

      final Map<String, String> headers = {
        'Authorization': _token, // set content-length
        'Content': 'application/json'
      };
      final Response response =
          await http.put(url, //put query to put the data as JSon
              headers: headers,
              body: jsonEncode(note.toJson()));
      if (response.statusCode == 200) {
        return right(unit); //if successfull return nothing
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
