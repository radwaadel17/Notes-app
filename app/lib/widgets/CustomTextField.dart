import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class customTextField extends StatelessWidget {
  const customTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(
        hintText: 'Title',
       // hintStyle: const TextStyle(color: Color(0xff62FCD7),),
        focusedBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff62FCD7)),
          borderRadius: BorderRadius.circular(10.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10.r),
        ),
       // labelText: 'Text',
      ),
    );
  }
}