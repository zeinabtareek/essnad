import 'package:b_app/screens/register_screen/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
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
                SizedBox(height: 140.h,),
                LoginCustomText(size: 30.sp, text: ' إنشاء حساب',onPressed: (){Get.back();},),
                Padding(
                  padding: EdgeInsets.only(top: 26.h, right: 0, left: 0, bottom: 0),
                  child: Container(
                    padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                    decoration: const BoxDecoration(
                        color: K.whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LoginLabel(
                            text: 'اسم المستخدم ',
                          widget: Image.asset("assets/images/personIcon.png",height: 20,),
                        ),
                        // K.sizedBoxH,
                        CustomTextField(
                          type: TextInputType.name,
                          icon: null,
                          obSecure: false,
                          onchange: (v) {
                            controller.validName(v);
                            print(v);
                          },
                        ),
                        LoginLabel(
                          text: 'البريد الإلكتروني',
                          widget: Image.asset("assets/images/emailicon.png", height: 43,),
                        ),
                        CustomTextField(
                          type: TextInputType.emailAddress,
                          icon: null,
                          obSecure: false,
                          onchange: (v) {
                            controller.validEmail(v);
                            print(v);
                          },
                        ),
                        LoginLabel(
                          text: 'رقم الهاتف',
                          widget: Image.asset("assets/images/phoneIcon.png",height: 20,),
                        ),
                        CustomTextField(
                          type: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          icon: null,
                          obSecure: false,
                          onchange: (v) {
                            controller.validmobile(v);
                            print(v);
                          },
                        ),
                        LoginLabel(
                          text: 'كلمه المرور',
                          widget: Image.asset("assets/images/lockicon.png",height: 20,),
                        ),
                        CustomTextField(
                          type: TextInputType.visiblePassword,
                          icon: null,
                          obSecure: true,
                          onchange: (v) {
                            controller.validPass(v);
                            print(v);
                          },
                        ),
                    Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(" الموافقة على الشروط والأحكام",
                                style: TextStyle(
                                    color: K.grayColor,
                                    fontSize: 16.sp)),
                            Obx(() => Checkbox(
                              activeColor: K.mainColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                ),
                                value: controller.value.value,
                                onChanged: (v) {
                                  controller.checkBoxFun(v!);
                                }),),
                          ],
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 40.h),
                            child: LoginButton(
                              onTap: () {
                               controller.validateForm();
                                  },
                              label: "إنشاء حساب",
                            ),
                          ),
                        ),K.sizedBoxH,
                        Center(
                          child: FixedRichText(
                            key: key,
                            leftLabel: "  تملك حساب بالفعل ؟ ",
                            rightLabel: "تسجيل الدخول  ",
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
        ),
    );
  }
}
