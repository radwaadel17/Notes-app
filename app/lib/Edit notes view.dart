import 'package:app/models/NoteModel.dart';
import 'package:app/widgets/EditNotesBody.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(
        note: note,
      ),
    );
  }
}
