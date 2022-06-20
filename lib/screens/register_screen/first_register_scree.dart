import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';

class FirstRegisterScreen extends StatelessWidget {
  const FirstRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // ColorFiltered(
      //   colorFilter:
      //       ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.xor),
      //   child:
      Image.asset(
        "assets/images/Al-Riyad.png",
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
        color: K.secondaryColor.withOpacity(.2),
        colorBlendMode: BlendMode.softLight,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Spacer(),
          Text('مرحبا بك',style: TextStyle(color: K.whiteColor,fontSize: 55.sp),),
          Spacer(),
          Container(
            height: 418.h,
            padding:
                EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w, bottom: 0),
            decoration: const BoxDecoration(
                color: K.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
            child: Column(
              children: [
                K.sizedBoxH,
                LoginButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.loginScreen);
                  },
                  label: "تسجيل الدخول",
                ),
                K.sizedBoxH,
                Text('المتابعه كضيف',style: TextStyle(color: K.mainColor,fontSize:16.sp ),),
                K.sizedBoxH,
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 8.0,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '  أو  ',
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 8.0,
                      ),
                    ),
                  ],
                ),
                K.sizedBoxH,
                K.sizedBoxH,
                LoginButton(
                  isForgetPassScreen: false,
                  isWhiteButton: true,
                  color: K.buttonColor,
                  onTap: () {
                    Get.toNamed(AppRoutes.registerScreen);
                  },
                  label: "إنشاء حساب جديد",
                ),
              ],
            ),
          ),
        ]),
      )
    ]);
  }
}
