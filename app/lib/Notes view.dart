import 'package:app/cubits/Notes%20cubit/Note%20cubit.dart';
import 'package:app/widgets/NotesViewBody.dart';
import 'package:app/widgets/customButtomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NoteCubit>(context).FetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
       showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        context: context, builder: (context){
            return const customButtomsheet();
       });
        } ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r)
        ), child: const Icon(Icons.add) ,
        ), 
      body: const NotesViewBody(
      ),
    );
  }
}
