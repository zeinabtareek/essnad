import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant.dart';
import 'home_story.dart';

class UserProfileImage extends StatelessWidget {
  String image;
    UserProfileImage({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Material(
        clipBehavior: Clip.antiAlias,
        elevation: 1,
        borderRadius: BorderRadius.circular(50),
        shadowColor: K.grayColor,
        child: Container(
          clipBehavior: Clip.antiAlias,
          width: 70,
          height: 70,
          child: Center(
            child: Image.asset(image,
              width: 70.w,
              height: 70.h,
            ),
          ),
          decoration: BoxDecoration(
              color: K.whiteColor,
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
