import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerColor extends StatefulWidget {
  const ContainerColor({super.key, required this.color, required this.ch});
  final Color color ;
  final bool ch ;

  @override
  State<ContainerColor> createState() => _ContainerColorState();
}

class _ContainerColorState extends State<ContainerColor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w ),
      child: Align(
        alignment: Alignment.center,
        child: Container(
        height: 50.h,
        width: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          color: widget.color,
          border: widget.ch == true ? Border.all(color: Colors.white , width: 4.w , strokeAlign: BorderSide.strokeAlignOutside) : Border.all(color: widget.color),
        ),
        ),
      ),
    );
  }
}