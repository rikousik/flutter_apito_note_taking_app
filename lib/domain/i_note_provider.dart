import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/domain/value_failure.dart';

abstract class INoteProvider {
  Future<Either<ValueFailure, NoteList>> getNoteList();
  Future<Either<ValueFailure, Unit>> createNote({@required NoteData note});
  Future<Either<ValueFailure, Unit>> updateNote({@required NoteObj note});
  Future<Either<ValueFailure, Unit>> deleteNote({@required NoteObj note});
}
