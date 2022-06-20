import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';
import '../screens/home_screen/controller/home_screen_controller.dart';

class CustomServicesCard extends StatelessWidget {
  String image;
  String text;
  Color color;
  Function() onTap;
  bool isHomeScreen;

  CustomServicesCard({
    Key? key,
    required this.controller,
    required this.image,
    required this.text,
    required this.onTap,
    required this.color,
    required this.isHomeScreen,
  }) : super(key: key);

  final HomeScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Card(
        margin: EdgeInsets.zero,
        shape:   RoundedRectangleBorder(
            borderRadius: isHomeScreen==true?
            BorderRadius.circular(20):
            const BorderRadius.only(
              topLeft: Radius.circular(21.0),
              topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(45.0),
                bottomLeft: Radius.circular(21.0),
            )
        ),
        shadowColor: Colors.white,
        elevation: 5,
        child: ClipPath(
          clipper:   ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: isHomeScreen==true?
                  BorderRadius.circular(20):const BorderRadius.only(
                    topLeft: Radius.circular(21.0),
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(45.0),
                    bottomLeft: Radius.circular(21.0),
                  ),
              ),
          ),
          child: InkWell(
            onTap: onTap,
            child: Container(
              width:isHomeScreen==true?117.w: 190.0,
                decoration: BoxDecoration(
                border: Border(top: BorderSide(color:color, width: 30)),),
              child: SingleChildScrollView(
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    K.sizedBoxH,
                    SizedBox(
                      width: 60.w,
                      height: 60.h,
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    K.sizedBoxH,
                    Text(text),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    // return Padding(
    //   padding: const EdgeInsets.all(0.0),
    //   child: Card(
    //     margin: EdgeInsets.zero,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(15.0),
    //     ),
    //     shadowColor: Colors.white,
    //     elevation: 5,
    //     child: ClipPath(
    //       clipper: ShapeBorderClipper(
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(15))),
    //       child: InkWell(
    //         onTap: onTap,
    //         child: Container(
    //           width: 150.0,
    //           decoration: const BoxDecoration(
    //             border: Border(top: BorderSide(color: K.darkGreen, width: 15)),),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               SizedBox(
    //                 width: 40.w,
    //                 height: 40.h,
    //                 child: Image.asset(
    //                   image,
    //                   fit: BoxFit.fill,
    //                 ),
    //               ),
    //               Text(text),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
