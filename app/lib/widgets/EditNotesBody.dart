import 'package:app/widgets/CustomTextField.dart';
import 'package:app/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
          children: [
            SizedBox(height: 50.h,),
            const CustomAppBar(txt: 'Edit Notes', icon: Icons.check,) ,
             SizedBox(height: 15.h,),
            const customTextField(txt: 'Title'),
            SizedBox(height: 15.h,),
            const customTextField(txt: 'Content' , mx: 5,),
          ],
      ),
    );
  }
}