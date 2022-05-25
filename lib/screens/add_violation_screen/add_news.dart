
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/appbar.dart';
import '../../componant/add_photo.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/custom_drop_down.dart';
import '../../componant/home_story.dart';
import '../../componant/indicatr.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import '../mission_include_screen/controller/controller.dart';

class AddNewsScreen extends StatelessWidget {
  final controller = Get.put(MissionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
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
                text: 'بث خبر',
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        K.sizedBoxH,
                        Directionality(textDirection: TextDirection.rtl,
                            child:  CustomDropDown(
                              controller: controller,
                              initialValue: controller.optionss[0] ??'',
                              onchange: (v) {
                                controller.selectedOption.value = v!;},  ),),

                        Directionality(textDirection: TextDirection.rtl,
                            child:  CustomDropDown(
                              controller: controller,
                              initialValue: controller.optionss[1] ??'',
                              onchange: (v) {
                                controller.selectedOption.value = v!;},  ),),

                      const Directionality(textDirection: TextDirection.rtl,
                        child:   postCustomTextFieldWidget(
                          height: 170,
                          text: 'نص الخبر...',
                          ),
                        ),
                        K.sizedBoxH,
                        Container(
                          color: K.firstColor3rdButton,
                          height: 50.h,
                          width: 50.w,
                          child: Image.asset('assets/images/addpic.png',fit: BoxFit.fill,),
                        ),
                        K.sizedBoxH,
                      Stack(children: [
                        Container(
                          color: K.firstColor3rdButton,
                          height: 120.h,
                          width: K.width,
                          child:
                            Image.asset('assets/images/map.png',fit: BoxFit.cover,),
                      ), Container(
                          height: 40.h,
                          width: 40,
                          child:
                            Image.asset('assets/images/loc.png',fit: BoxFit.contain,),
                      ),
                          ],

                        ),
                         Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: LoginButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.postScreen);
                              },
                              label: "مشاركه او طباعه",
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
        ),
      ),
    );
  }
}
