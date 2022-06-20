import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class OfferCards extends StatelessWidget {
  const OfferCards({Key? key, this.images, this.onTap,this.text}) : super(key: key);
  final Function()? onTap;
  final String? images;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      shadowColor: Colors.blueAccent,
      elevation: 15,
      child: ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: 190.0,
              decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: K.darkGreen, width: 25)),
              ),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40.w,
                    height: 40.h,
                    child: Image.asset(images!,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(text.toString()),
                ],
              ),
            )
            //     () {
            //   if (index == 0) {
            //     Get.to(AddViolationScreen());
            //   } else if (index == 1) {
            //     Get.to(MissionScreen());
            //   } else if (index == 2) {
            //     Get.to(AddNewsScreen());
            //   } else if (index == 3) {}
            // },
          )));
    //
    //  return GestureDetector(
    //   onTap: onTap,
    //   child: Container(
    //     clipBehavior: Clip.antiAlias,
    //     margin: null,
    //     width: K.width - 50.w,
    //     decoration: BoxDecoration(
    //         color: K.mainColor, borderRadius: BorderRadius.circular(4)),
    //     child: Image.asset(
    //       images.toString(),
    //       fit: BoxFit.cover,
    //       width: K.width,
    //     ),
    //   ),
    // );
  }
}
