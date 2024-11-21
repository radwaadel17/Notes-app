import 'package:app/models/NoteModel.dart';
import 'package:app/widgets/ContainerColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewOfColorsUpdated extends StatefulWidget {
  const ListViewOfColorsUpdated({super.key, required this.note});
  final NoteModel note ;
  @override
  State<ListViewOfColorsUpdated> createState() => _ListViewOfColorsUpdatedState();
}
class _ListViewOfColorsUpdatedState extends State<ListViewOfColorsUpdated> {
  @override
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

  Widget build(BuildContext context) {
    selectedIndex = colors.indexOf(Color(widget.note.color));
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
            widget.note.color = selectedColor.value;
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
