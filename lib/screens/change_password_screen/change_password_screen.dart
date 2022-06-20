import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';

class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
           backgroundColor: Colors.transparent, // remove color from appbar
          body:  SingleChildScrollView(
            child: Container(
              height: K.height,
              decoration: K.mainBoxDecoration,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  LoginCustomText(
                      size: 30.sp,
                      text: 'تعديل كلمه المرور',
                      onPressed: () {
                        Get.back();
                      },
                      isSetteingIcon: false),
                   Container(
                      height: K.height,
                      padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                       decoration: K.mainWhiteBoxDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        LoginLabel(
                                text: 'كلمه المرور القديمه',
                          widget:Tab(icon: Image.asset("assets/images/lockicon.png",height: 20,), ),
                              ),
                              K.sizedBoxH,
                              CustomTextField(
                                // label: "Email",
                                type: TextInputType.emailAddress,
                                icon: Icons.lock,
                                obSecure: false,
                                onchange: (v) {
                                  // _controller.email.value = v;
                                  print(v);
                                },
                              ),
                               LoginLabel(
                                text: 'كلمه المرور',
                                  widget:Tab(icon: Image.asset("assets/images/lockicon.png",height: 20,), ),
                                // icon: Image.asset("assets/images/lockicon.png",height: 20,),
                              ),
                              K.sizedBoxH,
                              CustomTextField(
                                // label: "Password",
                                type: TextInputType.phone,
                                icon: Icons.lock_outline_rounded,
                                obSecure: true,
                                onchange: (v) {
                                  print(v);
                                },
                              ),
                              LoginLabel(
                                text: 'تأكيد كلمه المرور',
                                widget:Tab(icon: Image.asset("assets/images/lockicon.png",height: 20,), ),
                              ),
                              K.sizedBoxH,
                              CustomTextField(
                                // label: "Password",
                                type: TextInputType.phone,
                                icon: Icons.lock_outline_rounded,
                                obSecure: true,
                                onchange: (v) {
                                  print(v);
                                },
                              ),
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40.h),
                                  child: LoginButton(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.home);
                                      // Get.toNamed(AppRoutes.postScreen);
                                    },
                                    label: "تأكيد",
                                  ),
                                ),
                              ),
                              K.sizedBoxH
                        ],
                      ),
                    ),
                 ] ),

                  // Container(
                  //   padding: EdgeInsets.only(
                  //       top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                  //   decoration: const BoxDecoration(
                  //       color: K.whiteColor,
                  //       borderRadius: BorderRadius.only(
                  //         topLeft: Radius.circular(25),
                  //         topRight: Radius.circular(25),
                  //       )),
                  //   child: Column(
                  //     children: [
                  //       LoginLabel(
                  //         text: 'كلمه المرور القديمه',
                  //         widget:Tab(icon:   Image.asset("assets/images/lockicon.png"), ),
                  //       ),
                  //       K.sizedBoxH,
                  //       CustomTextField(
                  //         // label: "Email",
                  //         type: TextInputType.emailAddress,
                  //         icon: Icons.lock,
                  //         obSecure: false,
                  //         onchange: (v) {
                  //           // _controller.email.value = v;
                  //           print(v);
                  //         },
                  //       ),
                  //       K.sizedBoxH,
                  //       LoginLabel(
                  //         text: 'كلمه المرور',
                  //           widget:Tab(icon: new Image.asset("assets/images/lockicon.png"), ),
                  //
                  //         // icon: Image.asset("assets/images/lockicon.png",height: 20,),
                  //       ),
                  //       K.sizedBoxH,
                  //       CustomTextField(
                  //         // label: "Password",
                  //         type: TextInputType.phone,
                  //         icon: Icons.lock_outline_rounded,
                  //         obSecure: true,
                  //         onchange: (v) {
                  //           print(v);
                  //         },
                  //       ),
                  //       LoginLabel(
                  //         text: 'تأكيد كلمه المرور',
                  //         widget:Tab(icon: Image.asset("assets/images/lockicon.png"), ),
                  //       ),
                  //       new Tab(icon: new Image.asset("assets/img/lockicon.png"), text: "Browse"),
                  //
                  //       K.sizedBoxH,
                  //       CustomTextField(
                  //         // label: "Password",
                  //         type: TextInputType.phone,
                  //         icon: Icons.lock_outline_rounded,
                  //         obSecure: true,
                  //         onchange: (v) {
                  //           print(v);
                  //         },
                  //       ),
                  //       Center(
                  //         child: Padding(
                  //           padding: EdgeInsets.only(top: 40.h),
                  //           child: LoginButton(
                  //             onTap: () {
                  //               Get.toNamed(AppRoutes.home);
                  //               // Get.toNamed(AppRoutes.postScreen);
                  //             },
                  //             label: "تأكيد",
                  //           ),
                  //         ),
                  //       ),
                  //       K.sizedBoxH
                  //     ],
                  //   ),
                  // ),
                ),
              // ],
            ),
          // ),
        );
  }
}
