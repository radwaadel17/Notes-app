import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key , required this.icon, this.onTap});
  final IconData icon ;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16.r)),
      child:Center(
        child: IconButton(
          onPressed: onTap,
         icon: Icon(icon),
        ),
      ),
    );
  }
}
