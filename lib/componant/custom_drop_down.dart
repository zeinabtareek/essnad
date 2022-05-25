


import 'package:flutter/cupertino.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';
import '../screens/mission_include_screen/controller/controller.dart';

class CustomDropDown extends StatelessWidget {
  dynamic initialValue;
  final Function(dynamic)? onchange;

    CustomDropDown({
    Key? key,
    required this.controller,
    required this.initialValue,
    required this.onchange,
  }) : super(key: key);

  final MissionController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
       margin: EdgeInsets.symmetric(
          horizontal: 0.0.w, vertical: 15.h),
      padding: EdgeInsets.symmetric(
          horizontal: 10.0.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
            color: K.mainColor,
            style: BorderStyle.solid,
            width: 2),
      ),
      child: DropDown<dynamic>(
        items: controller.optionss,
        showUnderline: false,
        hint: Text("Select"),
        initialValue: initialValue.toString(),
        onChanged: onchange,
        isCleared: controller.selectedOption.value == null,
        isExpanded: true,

      ),
    );
  }
}
