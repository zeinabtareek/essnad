import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

Widget get rectBorderWidget {
  return DottedBorder(
      dashPattern: [8, 4],
      color: K.mainColor.withOpacity(.5),
      strokeWidth: 2,
      child: Container(
        // <--- SizedBox
        height: 200.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        decoration: const BoxDecoration(
          color: K.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),child: Column(
        children: [
          K.sizedBoxH,
          K.sizedBoxH,
          const Text('اضافه صوره للخبر (اختياري)',style: TextStyle(
              color: K.blackTypingColor,
              fontWeight: FontWeight.bold
          ),),
          K.sizedBoxH,

          SizedBox(height: 100.h,
            width: 100.w,
            child:  Image.asset('assets/images/camera.png'),
          ),


        ],),
      )
  );
}
