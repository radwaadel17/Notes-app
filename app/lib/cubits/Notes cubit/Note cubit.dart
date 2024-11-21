import 'package:app/cubits/Notes%20cubit/Note%20states.dart';
import 'package:app/models/NoteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInit());

  FetchAllNotes() {
    var notes = Hive.box<NoteModel>('Notes');
    emit(NoteSuccsess(notes.values.toList()));
  }
}
