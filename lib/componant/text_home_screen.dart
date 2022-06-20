import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class TextHomeScreen extends StatelessWidget {
  String text;
  int size;

  TextHomeScreen({
    Key? key,
    required this.text,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
          color: K.whiteColor, fontSize: size.sp, fontWeight: FontWeight.bold),
    );
  }
}
