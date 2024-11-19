import 'package:app/widgets/customIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key , required this.icon , required this.txt});
  final String txt ;
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt,
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
        const Spacer(),
        CustomIcon(icon: icon,),
      ],
    );
  }
}

