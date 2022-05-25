import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class Button extends StatelessWidget {
 final String text;
  final double size;
  final bool ? isSplash;
   final VoidCallback ?onPressed;

 const Button({
    required this.text,
    required this.size,
      this.onPressed,
    this.isSplash,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: K.width,

      margin: isSplash==true? EdgeInsets.symmetric
        (horizontal: 27.0.w ,vertical: 2.0.h):const EdgeInsets.all(0.0),
      child:
      RaisedButton(

        onPressed:  onPressed,
        padding:const EdgeInsets.all(0),
        shape: isSplash==true?RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)):RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
        child: Ink(
          decoration: BoxDecoration(
              gradient:   LinearGradient(colors: [K.secColorFirstButton, K.mainColor],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: isSplash==true?BorderRadius.circular(5.0):BorderRadius.circular(28.0)
          ),
          child: Container(
            width: size,
            height: 60.h,
            // constraints: BoxConstraints(maxWidth: 280.0, minHeight: 52.0),
            alignment: Alignment.center,
            child:   Text(
              text,
              textAlign: TextAlign.center,
              style:   TextStyle(fontSize: 18.sp,
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),);
  }
}
