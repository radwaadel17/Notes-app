import 'package:app/cubits/Add%20note%20cubit/Add_note_cubit.dart';
import 'package:app/cubits/Notes%20cubit/Note%20cubit.dart';
import 'package:app/main.dart';
import 'package:app/widgets/ContainerColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewOfColors extends StatefulWidget {
  const ListViewOfColors({super.key});

  @override
  State<ListViewOfColors> createState() => _ListViewOfColorsState();
}

class _ListViewOfColorsState extends State<ListViewOfColors> {
    List<Color> colors  = [
  const Color(0xffFFCC80),
  const Color(0xffFD99FF),
  const Color(0xffFF9E9E),
  const Color(0xff91F48F),
  const Color(0xffFFF599),
  const Color(0xffB69CFF),
  ];
  int selectedIndex = 0 ;
  Color selectedColor =   const Color(0xffFFCC80) ; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context , index){
          bool ch = selectedIndex == index;
         return GestureDetector(
          onTap: (){
            selectedIndex = index ;
            selectedColor = colors[index];
             BlocProvider.of<AddNoteCubit>(context).color = selectedColor;
            setState(() {
              
            });
          },
          child: ContainerColor(
            ch: ch,
            color: colors[index]));
      }),
    );
  }
}
