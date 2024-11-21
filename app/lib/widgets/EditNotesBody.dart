import 'package:app/cubits/Notes%20cubit/Note%20cubit.dart';
import 'package:app/models/NoteModel.dart';
import 'package:app/widgets/CustomTextField.dart';
import 'package:app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          CustomAppBar(
            txt: 'Edit Notes',
            icon: Icons.check,
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).FetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          customTextField(
            txt: 'Title',
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          customTextField(
            txt: 'Content',
            mx: 5,
            onChanged: (value) {
              subtitle = value;
            },
          ),
        ],
      ),
    );
  }
}
