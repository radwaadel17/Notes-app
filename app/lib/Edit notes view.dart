import 'package:app/widgets/EditNotesBody.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: EditNotesViewBody(),
    );
  }
}