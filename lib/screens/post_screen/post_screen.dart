import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/add_photo.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';


class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

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
                text: 'اضافه خبر',
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
                        SizedBox(
                          height: 50.h,
                          width: 50.w,
                          child: Image.asset('assets/images/addpic.png'),
                        ),
                        K.sizedBoxH,
                          const postCustomTextFieldWidget(
                            height: 200,
                          text: 'اضافه خبر ...',
                        ),
                        K.sizedBoxH,
                        rectBorderWidget,
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 40.h),
                            child: LoginButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.postScreen);
                              },
                              label: "اضافه",
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
