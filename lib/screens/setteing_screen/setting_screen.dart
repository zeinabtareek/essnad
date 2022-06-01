import 'package:b_app/screens/change_password_screen/change_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/fixed_list_tile.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../data.dart';
import '../../routes/app_route.dart';
import 'controller/setting_screen_controller.dart';


class SettingScreen extends StatelessWidget {
 final controller =Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       extendBodyBehindAppBar: true,
       backgroundColor: Colors.transparent, // remove color from appbar
       appBar: CustomAppBar(
         isPassScreen:   true,
         actions: [
           IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_forward_ios, color: K.whiteColor,),),
         ],
       ),
       body: SingleChildScrollView(
         child: Container(
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
             alignment: WrapAlignment.center,
             children: [
               SizedBox(
                 height: 150.h,
               ),
               LoginCustomText(
                 size: 30.sp,
                 text: ' الاعدادات  ',
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
                   child: Column(
                     children: [
                       K.sizedBoxH,
                       Text('إعدادات الحساب',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp, color: K.blackTypingColor),),
                       K.sizedBoxH,
                       ListView.builder(
                         physics: const ClampingScrollPhysics(),
                               itemCount:controller.settingsLabels.length,
                               shrinkWrap: true,
                               padding: EdgeInsets.zero,
                               itemBuilder: (ctx, index) => FixedListTile(
                                 onTap: () {
                                   if (index == 0) {
                                     // Get.to(OrderHistory());
                                   } else if (index == 1) {
                                     // Get.to(PaymentScreen());
                                   } else if (index == 2) {
                                     Get.to(ChangePassScreen());
                                   } else if (index == 3) {}
                                 },
                                 title: controller.settingsLabels[index],
                                 // subTitle: controller.supportLabels[index],
                                 iconLeading:  Icons.arrow_back_ios,
                               )),

                       Text('الدعم',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp, color: K.blackTypingColor),),
                       ListView.builder(
                         physics: ClampingScrollPhysics(),
                               itemCount:controller.supportLabels.length,
                               shrinkWrap: true,
                               padding: EdgeInsets.zero,
                               itemBuilder: (ctx, index) => FixedListTile(
                                 onTap: () {
                                   if (index == 0) {
                                     // Get.to(OrderHistory());
                                   } else if (index == 1) {
                                     // Get.to(PaymentScreen());
                                   } else if (index == 2) {}
                                 },
                                 title: controller.supportLabels[index],
                                 // subTitle: controller.supportLabels[index],
                                 iconLeading:  Icons.arrow_back_ios,
                               )),


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
