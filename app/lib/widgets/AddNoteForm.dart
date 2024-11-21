import 'package:app/cubits/Add%20note%20cubit/Add_note_cubit.dart';
import 'package:app/cubits/Notes%20cubit/Note%20cubit.dart';
import 'package:app/models/NoteModel.dart';
import 'package:app/widgets/CustomTextField.dart';
import 'package:app/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          customTextField(
            onSaved: (data) {
              title = data;
            },
            txt: 'Title',
          ),
          SizedBox(
            height: 15.h,
          ),
          customTextField(
            onSaved: (data) {
              subtitle = data;
            },
            txt: 'Content',
            mx: 5,
          ),
          SizedBox(
            height: 15.h,
          ),
          ListViewOfColors(),
          SizedBox(
            height: 15.h,
          ),
          customButton(
            onTap: () {
              if (globalKey.currentState!.validate()) {
                globalKey.currentState!.save();
                NoteModel note = NoteModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
                BlocProvider.of<NoteCubit>(context).FetchAllNotes();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
class ListViewOfColors extends StatefulWidget {
  const ListViewOfColors({super.key});

  @override
  State<ListViewOfColors> createState() => _ListViewOfColorsState();
}

class _ListViewOfColorsState extends State<ListViewOfColors> {
    List<Color> colors  = [
  const Color(0xffFFCC80),
  const Color(0xffFD99FF),
  const Color(0xffFF9E9E),
  const Color(0xff91F48F),
  const Color(0xffFFF599),
  const Color(0xffB69CFF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context , index){
         return ContainerColor(color: colors[index]);
      }),
    );
  }
}
class ContainerColor extends StatelessWidget {
  const ContainerColor({super.key, required this.color});
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
      height: 60.h,
      width: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        color: color,
      ),
      ),
    );
  }
}