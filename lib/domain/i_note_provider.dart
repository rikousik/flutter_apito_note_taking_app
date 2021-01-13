import 'package:dartz/dartz.dart';
import 'package:flutter_apito_note_taking_app/domain/note.dart';
import 'package:flutter_apito_note_taking_app/domain/value_failure.dart';

abstract class INoteProvider {
  Future<Either<ValueFailure, NoteList>> getNoteList();
}
