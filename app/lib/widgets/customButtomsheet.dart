import 'package:app/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class customButtomsheet extends StatelessWidget {
  const customButtomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w , vertical: 16.h),
      child: Column(
        children: [
          SizedBox(height: 15.h,),
          const customTextField(txt: 'Title',),
          SizedBox(height: 15.h,),
          const customTextField(txt: 'Content' , mx: 5 ,),
        ],
      ),
    );
  }
}
