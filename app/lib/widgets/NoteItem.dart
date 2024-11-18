import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.h , bottom: 16.h , left: 10.w),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding:  EdgeInsets.only(bottom: 10.h),
              child: Text('Flutter Tips' , style: TextStyle(
                color: Colors.black , 
                fontSize: 20.sp,
              ),),
            ),
            subtitle:Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Text('Bulid your career with tharwat samy' ,
              
              style: TextStyle(
                color: Colors.black.withOpacity(0.5) , 
                fontSize: 16.sp,
              )
              ),
            ),
            trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete , color: Colors.black, size: 30,)),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Text('May 22 2024' , 
              style: TextStyle(
                color: Colors.black.withOpacity(0.5) , 
                fontSize: 12.sp,
              )),
          ),
        ],
      ),
    );
  }
}
