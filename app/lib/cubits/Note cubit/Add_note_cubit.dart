import 'package:app/cubits/Note%20cubit/Add_note_states.dart';
import 'package:app/models/NoteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInit());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>('Notes');
      await notesBox.add(note);
      emit(AddNoteSucsses());
    } catch (e) {
      emit(AddNoteFaluire(e.toString()));
    }
  }
}
