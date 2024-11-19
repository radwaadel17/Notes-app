import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class customButton extends StatelessWidget {
  const customButton({super.key, this.onTap});
  final void Function()? onTap ;
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
      child:  Center(child: Text('Add' , style: TextStyle(color: Colors.black , fontSize: 18.sp , fontWeight: FontWeight.w800),)),
      ),
    );
  }
}