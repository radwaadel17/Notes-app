import 'package:app/cubits/Add%20note%20cubit/Add_note_states.dart';
import 'package:app/models/NoteModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInit());
  Color color =   const Color(0xffFFCC80);
  addNote(NoteModel note) async {
    note.color = color.value;
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
