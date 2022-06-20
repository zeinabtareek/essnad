import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/add_photo.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../add_violation_screen/controller/controller.dart';
import '../add_violation_screen/widgets/share_to_other_media.dart';


class PostScreen extends StatelessWidget {
  // final addViolationController = Get.put(AddViolationController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // remove color from appbar
      body: GetBuilder<AddViolationController>(
        init :AddViolationController(),
    builder:(controller) => Container(
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
            LoginCustomText(size: 30.sp,text: ' ',onPressed: (){Get.back();},isSetteingIcon:false),
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
                          text: '....تفاصيل المهمه  ',
                        ),
                        K.sizedBoxH,
                        rectBorderWidget,
                        K.sizedBoxH,
                        K.sizedBoxH,
                        Container(
                          width: K.width,
                          height: 200,
                          child: Stack(children: [
                            Positioned(
                              top:0,
                              left: 0,
                              right: 0,
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LoginButton(
                                    onTap: (){
                                      Get.toNamed(AppRoutes.postScreen);
                                    },
                                    // onTap: ()async {
                                    //   // return generateAndPrintArabicPdf( );
                                    //   double pixelRatio = MediaQuery.of(context).devicePixelRatio;
                                    //   final imageFile =  await controller.screenshotController.captureFromWidget( buildImageWidget(),pixelRatio: pixelRatio) ;
                                    //   if(imageFile==null) {
                                    //     Get.snackbar('Error', 'during downloading ', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
                                    //     return ;
                                    //   }
                                    //   else{
                                    //     Get.snackbar('Success', 'The Pdf is downloaded successfully ', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
                                    //     await controller.getPdf(imageFile);
                                    //   }
                                    //  },
                                    customWidth: true,
                                    width: 200,
                                    label: "  التالي ",
                                    // label: "  طباعه",
                                  ),
                                  IconButton(
                                    onPressed: (){
                                      controller.checkFun();
                                    }
                                    , icon:const Icon(FontAwesomeIcons. shareNodes ,
                                      size: 30,
                                      color: K.grayColor),),
                                ],
                              ),),
                            AnimatedPositioned(
                                left: 30,
                                right: 30,
                                bottom:controller.pinPillPosition,
                                duration: Duration(milliseconds: 700),
                                curve: Curves.easeIn,
                                child: ShareWithMedia()
                            ),
                          ],),
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
