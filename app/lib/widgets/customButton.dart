import 'package:app/cubits/Add%20note%20cubit/Add_note_cubit.dart';
import 'package:app/cubits/Add%20note%20cubit/Add_note_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customButton extends StatelessWidget {
  const customButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40.h,
        decoration: BoxDecoration(
          color: const Color(0xff62FCD7),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            if (state is AddNoteLoading) {
              return const Center(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: AbsorbPointer(
                    absorbing: true,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                  child: Text(
                'Add',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800),
              ));
            }
          },
        ),
      ),
    );
  }
}
