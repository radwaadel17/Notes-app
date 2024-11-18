import 'package:app/widgets/NoteItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListviewNoteitem extends StatelessWidget {
  const ListviewNoteitem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context , index){
         return Padding(
           padding:  EdgeInsets.symmetric(vertical: 4.h),
           child: NoteItem(),
         );
      }),
    );
  }
}
