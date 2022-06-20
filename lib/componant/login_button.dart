import 'package:b_app/screens/login_screen/controller/login_controller.dart';
import 'package:b_app/screens/otp_screen/controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class LoginButton extends StatelessWidget {
    LoginButton({Key? key, this.label, this.onTap,this.controller ,this.isForgetPassScreen,this.color ,this.isWhiteButton }) : super(key: key);
  final Function()? onTap;
  final String? label;
  final bool  ?isForgetPassScreen ;
  final bool  ?isWhiteButton ;
  LoginController ?controller;
  Color? color ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 60.h,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          elevation: 10,
            side: BorderSide(color:K.mainColor, width: 1),
            backgroundColor:isForgetPassScreen==true?color:isWhiteButton==true?K.whiteColor: K.mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(label!,
            style: TextStyle(
                color: isWhiteButton==true?K.mainColor:K.whiteColor,
                fontSize: 22.sp,
                fontFamily: "Raleway",
                fontWeight: FontWeight.w500)
        ),
      ),
    );
  }
}
