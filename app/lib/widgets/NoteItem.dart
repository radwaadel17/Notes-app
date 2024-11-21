import 'package:app/Edit%20notes%20view.dart';
import 'package:app/cubits/Notes%20cubit/Note%20cubit.dart';
import 'package:app/models/NoteModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key , required this.model});
  final NoteModel model ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
            return EditNoteView(note: model,);
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 16.h, bottom: 16.h, left: 10.w),
        decoration: BoxDecoration(
          color: Color(model.color),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Text(
                  model.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Text(model.subtitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 14.sp,
                    )),
              ),
              trailing: IconButton(
                  onPressed: () {
                    model.delete();
                    BlocProvider.of<NoteCubit>(context).FetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Text(model.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 12.sp,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
