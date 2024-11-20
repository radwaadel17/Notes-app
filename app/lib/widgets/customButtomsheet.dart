import 'package:app/cubits/Add%20note%20cubit/Add_note_cubit.dart';
import 'package:app/cubits/Add%20note%20cubit/Add_note_states.dart';
import 'package:app/widgets/AddNoteForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class customButtomsheet extends StatefulWidget {
  const customButtomsheet({super.key});

  @override
  State<customButtomsheet> createState() => _customButtomsheetState();
}

class _customButtomsheetState extends State<customButtomsheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: BlocConsumer<AddNoteCubit ,  AddNoteState>(
        listener: (context, state) {
          if(state is AddNoteSucsses){
            Navigator.pop(context);
          }
          else if (state is AddNoteFaluire){
            print(state.errorMessage);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false,
            child: const SingleChildScrollView(
              child: AddNoteForm(),
            ),
          );
        },
      ),
    );
  }
}
