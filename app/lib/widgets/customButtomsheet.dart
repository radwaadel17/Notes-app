import 'package:app/cubits/Add%20note%20cubit/Add_note_cubit.dart';
import 'package:app/cubits/Add%20note%20cubit/Add_note_states.dart';
import 'package:app/widgets/AddNoteForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: camel_case_types
class customButtomsheet extends StatefulWidget {
  const customButtomsheet({super.key});

  @override
  State<customButtomsheet> createState() => _customButtomsheetState();
}

// ignore: camel_case_types
class _customButtomsheetState extends State<customButtomsheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(top: 16.w, right: 16.h , left: 16.w , bottom: MediaQuery.of(context).viewInsets.bottom),
        
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSucsses) {
              Navigator.pop(context);
            } else if (state is AddNoteFaluire) {
              // ignore: avoid_print
              print(state.errorMessage);
            }
          },
          builder: (context, state) {
            return const SingleChildScrollView(
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
