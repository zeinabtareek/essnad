import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
  import '../../componant/custom_login_label.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import 'controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(LoginController());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body:Container(
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
              LoginCustomText(size: 30.sp, text: ' تسجيل الدخول',),
              Padding(
                padding: EdgeInsets.only(top: 70.h, right: 0, left: 0, bottom: 0),
                child: Container(
                  height: K.height,
                  width: K.width,
                  padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                  decoration: const BoxDecoration(
                      color: K.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LoginLabel(
                          text: 'الاسم ',
                          icon: Icons.person,
                        ),
                        K.sizedBoxH,
                        CustomTextField(
                          // label: "Email",
                          type: TextInputType.emailAddress,
                          icon: Icons.email_outlined,
                          obSecure: false,
                          onchange: (v) {
                            // _controller.email.value = v;
                            print(v);
                          },
                        ),
                        K.sizedBoxH,
                        LoginLabel(
                          text: 'كلمه المرور',
                          icon: Icons.lock,
                        ),
                        K.sizedBoxH,
                        CustomTextField(
                          // label: "Password",
                          type: TextInputType.phone,
                          icon: Icons.lock_outline_rounded,
                          obSecure: true,
                          onchange: (v) {print(v);},
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 40.h),
                            child: LoginButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.home);
                                // Get.toNamed(AppRoutes.postScreen);
                              },
                              label: "تسجيل الدخول",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

