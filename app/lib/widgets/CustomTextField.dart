import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class customTextField extends StatelessWidget {
  const customTextField({super.key , required this.txt , this.mx = 1, this.onSaved, this.onChanged} );
  final String txt ;
  final int mx ;
  final void Function(String?)? onSaved ;
  final void Function(String)? onChanged ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged ,
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'This field is required';
        }else{
           return null;
        }
      },
      maxLines:mx,
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(
        hintText: txt,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff62FCD7)),
          borderRadius: BorderRadius.circular(10.r),
        ),
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