import 'package:app/cubits/Notes%20cubit/Note%20cubit.dart';
import 'package:app/cubits/Notes%20cubit/Note%20states.dart';
import 'package:app/models/NoteModel.dart';
import 'package:app/widgets/NoteItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListviewNoteitem extends StatelessWidget {
  const ListviewNoteitem({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = state is NoteSuccsess ? state.notes : []; 
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 14.h),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  child: NoteItem(model : notes[index]),
                );
              }),
        );
      },
    );
  }
}
