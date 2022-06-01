import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';

class LoginCustomText extends StatelessWidget {
  LoginCustomText({
    required this.text,
    required this.size,
    Key? key,
  }) : super(key: key);

  String text;

  double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: K.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: size.sp,
      ),
    );
  }
}
