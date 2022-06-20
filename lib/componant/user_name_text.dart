import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class UserNameText extends StatelessWidget {
    UserNameText({Key? key,required this.text}) : super(key: key);
 String text;
  @override
  Widget build(BuildContext context) {
    return Text(text.toString(),style: TextStyle(
      fontSize: 20.sp,
      color: K.blackTypingColor
    ),);
  }
}
