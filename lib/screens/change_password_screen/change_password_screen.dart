import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/add_photo.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../data.dart';
import '../../routes/app_route.dart';

class ChangePassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // remove color from appbar
      appBar: CustomAppBar(
        isPassScreen:   true,
        actions: [
          IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_forward_ios, color: K.whiteColor,),),

          K.sizedBoxW,
        ],
      ),
      body: Container(
        width: K.width,
        height: K.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              K.mainColor,
              K.secondaryColor,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            alignment: WrapAlignment.center,
            children: [
              SizedBox(
                height: 150.h,
              ),
              LoginCustomText(
                size: 30.sp,
                text: 'تغيير كلمه المرور',
              ),
              K.sizedBoxH,
              Padding(
                padding:
                EdgeInsets.only(top: 10.h, right: 0, left: 0, bottom: 0),
                child: Container(
                  height: K.height,
                  width: K.width,
                  padding: EdgeInsets.only(
                      top: 20.h, right: 30.w, left: 30.w, bottom: 0),
                  decoration: const BoxDecoration(
                      color: K.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child: SingleChildScrollView(
                    child:Column(
                      children: [
                        ListView.builder(
                            itemCount: data.length,
                            shrinkWrap: true,
                            itemBuilder: (build ,index){
                              return  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  LoginLabel(
                                    text: data[index],
                                    icon: Icons.lock,
                                  ),
                                  K.sizedBoxH,
                                  CustomTextField(
                                    // label: "Email",
                                    type: TextInputType.emailAddress,
                                    icon: null,
                                    obSecure: false,
                                    onchange: (v) {
                                      // _controller.email.value = v;
                                      print(v);
                                    },
                                  ),
                                  K.sizedBoxH,

                                ],
                              );
                            }
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.h),
                            child: LoginButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.postScreen);
                              },
                              label: "تأكيد",
                            ),
                          ),
                        ),
                      ],
                    )
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
