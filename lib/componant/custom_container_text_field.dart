import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class postCustomTextFieldWidget extends StatelessWidget {
  final String text;
  final int height;

  const postCustomTextFieldWidget({Key? key, required this.text, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // <--- SizedBox
      height: height.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: K.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: K.mainColor, width: 2.0),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        cursorColor: K.mainColor,
        maxLines: 300 ~/ 20,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: text.toString(),
          hintStyle: const TextStyle(
            color: K.grayColor,
          ),
          fillColor: K.whiteColor,
        ),
      ),
    );
  }
}
