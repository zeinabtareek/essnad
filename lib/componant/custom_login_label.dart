import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class LoginLabel extends StatelessWidget {
  String ?text;
  final IconData? icon;
    LoginLabel({
    this.text,
    this.icon,
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
              fontSize: 20.sp, fontWeight: FontWeight.bold, height: 1),
        ),

        // Text(text!,style: TextStyle(
        //     fontFamily: "Raleway",
        //     fontSize: 20.sp,
        //     fontWeight: FontWeight.w600,
        //     color: K.mainColor
        // ),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Icon(icon,color: K.mainColor,size: 25,),
        ),
      ],
    );
  }
}