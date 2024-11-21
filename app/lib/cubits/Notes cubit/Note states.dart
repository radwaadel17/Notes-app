import 'package:app/models/NoteModel.dart';

class NoteState {}

class NoteInit extends NoteState {}

class NoteSuccsess extends NoteState {
  List<NoteModel> notes;
  NoteSuccsess(this.notes);
}
