import 'package:app/widgets/CustomTextField.dart';
import 'package:app/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class customButtomsheet extends StatelessWidget {
  const customButtomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w , vertical: 16.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            const customTextField(txt: 'Title',),
            SizedBox(height: 15.h,),
            const customTextField(txt: 'Content' , mx: 5 ,),
            SizedBox(height: 50.h,),
            const customButton(),
            SizedBox(height: 15.h,),
          ],
        ),
      ),
    );
  }
}

