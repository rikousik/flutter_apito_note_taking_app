import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
abstract class Note with _$Note {
  const factory Note(
      {@required String title,
      @required String note,
      @required int timeStamp}) = NoteObj;
  const factory Note.list({@required List<NoteObj> notes}) = NoteList;
  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
