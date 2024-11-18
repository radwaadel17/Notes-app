import 'package:app/widgets/ListviewNoteitem.dart';
import 'package:app/widgets/NoteItem.dart';
import 'package:app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
         SizedBox(height: 50.h,),
         const CustomAppBar(),
         const Expanded(child: ListviewNoteitem()),
        ],
      ),
    );
  }
}
