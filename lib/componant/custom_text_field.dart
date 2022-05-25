import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      this.icon,
      this.label,
      this.onchange,
      this.type,
      this.obSecure = false})
      : super(key: key);
  final String? label;
  final IconData? icon;
  final TextEditingController? controller;
  final Function(String)? onchange;
  final bool? obSecure;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
      child: TextField(
        keyboardType: type,
        controller: controller,
        onChanged: onchange,
        obscureText: obSecure!,
        cursorColor: K.blackTypingColor,
        style: TextStyle(
            color: K.blackTypingColor, fontSize: 16.sp, fontFamily: "Raleway", fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: K.grayColor,size: 16.sp,),
          labelText: label,
          labelStyle: TextStyle(
              fontFamily: "Raleway",
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
               color: const Color(0xff8E8E93)
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDADADA)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffDADADA)),
          ),
        ),
      ),
    );
  }
}
