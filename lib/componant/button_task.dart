import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class ButtonTasks extends StatelessWidget {
  String text;
  Color f;
  Color s;
    ButtonTasks({
    required this.text,
    required this.f,
    required this.s,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: K.width,
        margin: EdgeInsets.symmetric(horizontal: 50.w,vertical: 10.h),
        decoration: BoxDecoration(
          gradient:   LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              f,s
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              offset: Offset(2, 4),
              blurRadius: 7,
            ),
          ],
          border: Border.all(
            color: K.grayColor,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(child: Text(text.toUpperCase(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22.sp,),textDirection: TextDirection.rtl,)));
  }
}
