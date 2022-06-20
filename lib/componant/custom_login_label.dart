import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class LoginLabel extends StatelessWidget {
  String ?text;
  // final String? icon;
  Widget ? widget;
  final IconData? icon;
    LoginLabel({
    this.text,
    this.icon,
    this.widget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('\n $text',
          textDirection: TextDirection.rtl,
          style:   TextStyle(color: K.mainColor,
              fontSize: 20.sp, fontWeight: FontWeight.w400, height: 1),
        ),
          Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: widget),
      ],
    );
  }
}
