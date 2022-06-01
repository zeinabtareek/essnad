


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class SearchTextField2 extends StatelessWidget {
  String text;
    SearchTextField2({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 59.h,
      child: TextField(
        autofocus: false,
        cursorColor:K.mainColor,
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 16.sp, color: K.blackTypingColor,),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
          prefixIcon: Icon(Icons.search,color: K.grayColor,),
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),

          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
        ),

      ),
    );
  }
}
