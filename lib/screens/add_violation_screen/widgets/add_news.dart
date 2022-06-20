
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../componant/appbar.dart';
import '../../../componant/add_photo.dart';
import '../../../componant/custom_container_text_field.dart';
import '../../../componant/custom_drop_down.dart';
import '../../../componant/home_story.dart';
import '../../../componant/indicatr.dart';
import '../../../componant/login_button.dart';
import '../../../componant/loging_componant/login_custom_text.dart';
import '../../../constants/constant.dart';
import '../../../routes/app_route.dart';
import '../../map_screen/controller/map_controller.dart';
import '../../mission_include_screen/controller/controller2.dart';

class AddNewsScreen extends StatelessWidget {
  final controller = Get.put(MissionController());
  final controllerm=Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Scaffold(
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
                ),
            ),
            child:  Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              alignment: WrapAlignment.center,
              children: [
              K.sizedBoxH,
              SizedBox(height: 120.h,),
              LoginCustomText(size: 30.sp, text: 'بث مباشر',onPressed: (){Get.back();},isSetteingIcon:false),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      //   K.sizedBoxH,
                      //   Directionality(textDirection: TextDirection.rtl,
                      //       child:  CustomDropDown(
                      //         controller: controller,
                      //         initialValue: controller.optionss[0] ??'',
                      //         onchange: (v) {
                      //           controller.selectedOption.value = v!;},  ),),
                      //
                      //   Directionality(textDirection: TextDirection.rtl,
                      //       child:  CustomDropDown(
                      //         controller: controller,
                      //         initialValue: controller.optionss[1] ??'',
                      //         onchange: (v) {
                      //           controller.selectedOption.value = v!;},  ),),
                      //
                      // const Directionality(textDirection: TextDirection.rtl,
                      //   child:   postCustomTextFieldWidget(
                      //     height: 170,
                      //     text: 'نص الخبر...',
                      //     ),
                      //   ),
                      //   K.sizedBoxH,
                        Container(
                          color: K.firstColor3rdButton,
                          height: 100.h,
                          width: 100.w,
                          child: Image.asset('assets/images/addpic.png',fit: BoxFit.fill,),
                        ),
                        K.sizedBoxH,
                        Container(
                          color: K.firstColor3rdButton,
                          height: 290.h,
                          width: K.width,
                          child:  GoogleMap( //Map widget from google_maps_flutter package
                            zoomGesturesEnabled: true,
                            myLocationEnabled:true,
                            initialCameraPosition: const CameraPosition(
                                target:LatLng(37.785834, -122.406417),
                                zoom: 18
                            ),
                            mapType: MapType.terrain,
                            onMapCreated: (controller) {
                                controllerm.getCurrentLocation();
                            },

                          ),
                       ),
                         Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: LoginButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.mapScreen);
                              },
                              label: "التالي",
                             ),
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
      ),
    );
  }
}
