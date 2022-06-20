import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
  import '../../componant/custom_login_label.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import 'controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(LoginController());
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
                LoginCustomText(size: 30.sp, text: ' تسجيل الدخول',onPressed: (){Get.back();},),
                Padding(
                  padding: EdgeInsets.only(top: 26.h, right: 0, left: 0, bottom: 0),
                  child: Container(
                    width:K.width,
                    padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                    decoration:K.boxDecoration,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         LoginLabel(
                          text: 'الاسم ',
                           widget: Image.asset("assets/images/personIcon.png",height: 20, ),
                         ),
                        K.sizedBoxH,
                        CustomTextField(
                           type: TextInputType.emailAddress,
                          obSecure: false,
                          onchange: (v) {
                            _controller.validEmail(v);
                            print(v);
                          },),
                        LoginLabel(
                          text: 'كلمه المرور',
                          widget: Image.asset("assets/images/lockicon.png",height: 20,),
                        ),
                        K.sizedBoxH,
                        CustomTextField(
                          obSecure: true,
                          type: TextInputType.visiblePassword,
                          onchange: (v) {
                            _controller.validPassword(v);
                            print(v);
                            },
                        ),InkWell(
                            child: const Text('نسيت كلمه المرور ؟',
                          style: TextStyle(color: K.mainColor,height: 2),
                            ),onTap: (){
                              Get.toNamed(AppRoutes.changePassScreen);},
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 40.h),
                            child: LoginButton(
                              onTap: () {
                                // _controller.sendOTP();
                                _controller.log();
                             },
                              label: "تسجيل الدخول",
                            ),
                          ),
                        ),K.sizedBoxH,
                        Center(
                          child: FixedRichText(
                            key: key,
                            leftLabel: "  ليس لديك حساب ؟ ",
                            rightLabel: "سجل الآن  ",
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

