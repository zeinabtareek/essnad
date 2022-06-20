import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/otp_input.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../login_screen/controller/login_controller.dart';
import 'controller/otp_controller.dart';

class OtpScreen extends StatelessWidget {
    OtpScreen({Key? key}) : super(key: key);
    LoginController controller =Get.put( LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: K.whiteColor,
        body:SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    K.mainColor,
                    K.secondaryColor,
                  ],
                )
            ),
            child:  Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              alignment: WrapAlignment.center,
              children: [
                K.sizedBoxH,
                SizedBox(height: 150.h,),
                LoginCustomText(size: 30.sp, text: 'التحقق من الحساب',),
                Container(
                    padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                    margin: EdgeInsets.only(top: 23.h,),
                    decoration: const BoxDecoration(
                        color: K.whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Obx(()=> Column(
                      children: [
                        Text('ادخل الرقم المرسل لهاتفك',style: TextStyle(color: K.grayColor,fontSize: 22.sp),),
                        SizedBox(height: 43.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            OtpInput(controller.fieldOne,  true, 63.h, 64.w,),
                            OtpInput(controller.fieldTwo, false, 63.h, 64.w,),
                            OtpInput(controller.fieldThree, false, 63.h, 64.w,),
                            OtpInput(controller.fieldFour, false, 63.h, 64.w,)
                          ],),
                        K.sizedBoxH,
                        Text(controller.otp.value.isEmpty? 'الرجاء ادخال رمز التأكيد':
                        (controller.otp.value.length!=4 )?'الرقم المدخل غير صحيح':
                        '  الرمز هو  ${ controller.otp.value}  ' ,
                          style:TextStyle(color:
                          controller.otp.value.isEmpty?K.blackTypingColor:
                          controller.otp.value.length!=4?Colors.red:
                          Colors.black,fontSize: controller.otp.value.length!=3?16.sp:22.sp),),
                        Text('اعاده ارسال الكود',style: TextStyle(color: K.mainColor,fontSize: 16.sp,height: 2),),
                        Center(
                          child:   LoginButton(
                              controller: controller,
                            isForgetPassScreen: true,
                            color: controller.otp.value.length!=4?K.buttonColor:K.mainColor,
                            onTap: (){ controller.otp.value = controller.fieldOne.text +
                                  controller.fieldTwo.text +
                                  controller.fieldThree.text +
                                  controller.fieldFour.text;
                              controller.isNotEmpty( );
                              print(controller.otp.value);},
                              label: "تأكيد",
                            ),
                          ),SizedBox(height: 10,),
                         Center(
                          child:FixedRichText(
                            key: key,
                            leftLabel: "  لم يتم ارسال الرمز ؟",
                            rightLabel: "اعاده ارسال ",
                            isForgetPassScreen: true,
                            onTab: () {
                              Get.toNamed(AppRoutes.loginScreen);
                            },

                          ),
                        ),

                      ],
                    ),
                  ),
                  ),
              ],
            ),
          ),
        )
    );
  }
}
