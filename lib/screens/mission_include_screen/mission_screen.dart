
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/add_photo.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/custom_drop_down.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/login_rich_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import 'controller/controller.dart';

class MissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MissionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // remove color from appbar
      appBar: CustomAppBar(
        icon: null,
        isPassScreen: true,
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
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.end,
          alignment: WrapAlignment.end,
          children: [
            K.sizedBoxH,
            SizedBox(
              height: 150.h,
            ),
            LoginCustomText(
              size: 30.sp,
              text: ' محتوي المهمه',
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, right: 0, left: 0, bottom: 0),
              child: Container(
                height: K.height,
                width: K.width,
                padding: EdgeInsets.only(
                    top: 0.h, right: 30.w, left: 30.w, bottom: 0),
                decoration: const BoxDecoration(
                    color: K.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: SingleChildScrollView(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        K.sizedBoxH,
                        const LoginFixedRichText(
                          text: ' المهمه : ',
                        ),
                        const Text(
                          'نام کتاب را وارد کنید نام کتاب را وارد کنید نام کتاب را وارد کنید نام کتاب را وارد کنید',
                          style: TextStyle(),
                          textDirection: TextDirection.rtl,
                        ),
                        const LoginFixedRichText(
                          text: ' تاريخ الانتهاء : ',
                        ),
                        const Text(
                          '21:14:59 2022-04-16',
                          style: TextStyle(),
                          textDirection: TextDirection.ltr,
                        ),

                        CustomDropDown(
                            controller: controller,
                          initialValue: controller.optionss.first,
                          onchange: (v) {
                            controller.selectedOption.value = v!;
                          },),
                        const postCustomTextFieldWidget(
                          height: 200,
                          text: 'الملاحظات',
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: LoginButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.postScreen);
                              },
                              label: "حفظ",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

