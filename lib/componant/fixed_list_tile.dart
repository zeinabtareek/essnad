 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class FixedListTile extends StatelessWidget {
  const FixedListTile(
      {Key? key, this.onTap, this.iconLeading, this.title})
      : super(key: key);
  final String? title;
  final Function()? onTap;
  final IconData? iconLeading;


  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(horizontal: 0.w,vertical: 5.h),
      margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 0.h),
        decoration:   BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2.0,
                color:K.grayColor.withOpacity(.5)),
          ),
        ),child:ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        onTap: onTap,
        leading: Icon(
          iconLeading!,
          color:K.grayColor.withOpacity(.9),
          size: 20.sp,
        ),
        title: Text(
          title!,
          textDirection: TextDirection.rtl,
          style:   TextStyle(color: K.mainColor,
              fontSize: 20.sp, fontWeight: FontWeight.bold, height: 1),
        ),

      ),

    );
  }
}
