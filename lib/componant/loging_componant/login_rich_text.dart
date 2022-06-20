import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constant.dart';

class LoginFixedRichText extends StatelessWidget {
  // LoginFixedRichText
  final String? text;

  const LoginFixedRichText({Key? key, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
        padding: EdgeInsets.only(
            top: 20.h, bottom: 5.0.h),
        width: K.width,
        child:
          Text(text.toString(),
            textDirection: TextDirection.rtl,
            style:   TextStyle(
              color: K.secondaryColor,
              fontWeight: FontWeight.bold ,
              fontSize: 20.sp,
            ),
          ),

    );
  }
}
