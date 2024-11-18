import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class customTextField extends StatelessWidget {
  const customTextField({super.key , required this.txt , this.mx = 1} );
  final String txt ;
  final int mx ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: mx,
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(
        hintText: txt,
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