import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../componant/custom_container_text_field.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constants/constant.dart';

class ContactUsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Container(
        decoration: K.mainBoxDecoration,
    child:  Wrap(
    crossAxisAlignment: WrapCrossAlignment.end,
    alignment: WrapAlignment.center,
    children: [
     SizedBox(height: 150.h,),
    LoginCustomText(size: 30.sp, text:'Contact Us',onPressed: (){Get.back();},),
    Container(
    width:K.width,
    height: K.height,
    padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w, bottom: 0),
    decoration:K.boxDecoration,
    child:  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Material(
            elevation: 6,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  K.sizedBoxH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.phone,
                        size: 35,
                      ),
                      K.sizedBoxW,
                      Text(
                        '+966 366 355 373 0 ',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  K.sizedBoxH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.email,
                        size: 35,
                      ),
                      K.sizedBoxW,
                      Text(
                        'abc12 @test.com',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  K.sizedBoxH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.message_outlined,
                        size: 35,
                      ),
                      K.sizedBoxW,
                      Text(
                        ' +20 5364 27829',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  K.sizedBoxH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 40,
                      ),
                      K.sizedBoxW,
                      SizedBox(
                          width: K.width / 1.5,
                          child: Text(
                            'Ksa Saudi Arabia Loream ipsum 12 35alsharek, alryad',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ],
                  ),
                  K.sizedBoxH,
                  K.sizedBoxH,

                ],
              ),
            ),
          ),
      Spacer(),

      Image.asset('assets/images/newlogosplashscreen.png'),
        Spacer(),
    ],
      ),)]
    )
    )
    );
  }
}
