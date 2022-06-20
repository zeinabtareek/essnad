import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constants/constant.dart';
import '../../data.dart';


class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              decoration: K.mainBoxDecoration,
              child:  Wrap(
                  crossAxisAlignment: WrapCrossAlignment.end,
                  alignment: WrapAlignment.center,
                  children: [
                    SizedBox(height: 150.h,),
                    LoginCustomText(size: 30.sp, text:'عن إسناد',onPressed: (){Get.back();},),
                    Container(
                      width:K.width,
                      height: K.height,
                      decoration:K.boxDecoration,
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: K.width/3.w,child:Image.asset('assets/images/newlogosplashscreen.png') ,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:   [
                            Text('   معلومات عن اسناد   ',style: TextStyle(
                              fontSize: 25.sp,color: K.mainColor,fontWeight: FontWeight.w600
                            ),),
                          ],),
                          ListView.builder(
                              itemCount: termsList.length,
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 1.h),
                              itemBuilder: (BuildContext context, index) {
                                return Container(
                                  padding: EdgeInsets.all(8),
                                  child:
                                  Text( termsList[index].toString(),
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                );
                              }),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:   [
                              Text('  خدمات التطبيق   ',style: TextStyle(
                                  fontSize: 25.sp,color: K.mainColor,fontWeight: FontWeight.w600
                              ),),
                            ],),
                      Container(
                        padding: EdgeInsets.all(8),
                        child:
                        Text( '0${termsList[0].toString()}',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                      ],
                      ),)]
              )
          ),
        )
    );
  }
}
