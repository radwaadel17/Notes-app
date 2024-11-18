import 'package:app/widgets/NotesViewBody.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      /* floatingActionButton: FloatingActionButton(
        onPressed: (){} , child: const Icon(Icons.add) ,
        ), */
      body: NotesViewBody(
      ),
    );
  }
}
