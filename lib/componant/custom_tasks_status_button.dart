import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CustomTasksStatusButton extends StatelessWidget {
  String text ;
  bool isFinished;
    CustomTasksStatusButton({
    Key? key,
   required this.text,
   required this.isFinished,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
            text.toUpperCase(),
            style: TextStyle(fontSize: 15.sp)
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(isFinished?K.mainColor:K.orangeColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: K.whiteColor)
                )
            )
        ),
        onPressed: () => null
    );
  }
}
