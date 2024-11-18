import 'package:app/widgets/NotesViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){} , child: const Icon(Icons.add) ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r)
        ),
        ), 
      body: NotesViewBody(
      ),
    );
  }
}
