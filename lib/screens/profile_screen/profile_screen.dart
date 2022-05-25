
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../componant/appbar.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/fixed_list_tile.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/user_name_text.dart';
import '../../componant/user_profile_image.dart';
import '../../constant.dart';
import '../../data.dart';
import '../../routes/app_route.dart';
import 'controller.dart';

class ProfileScreen extends StatelessWidget {
    ProfileScreen({Key? key}) : super(key: key);
final conroller=Get.put(ProfileController());
   @override
  Widget build(BuildContext context) {
     return Scaffold(
       extendBodyBehindAppBar: true,
       backgroundColor: Colors.transparent, // remove color from appbar
       appBar: CustomAppBar(
         isPassScreen: true,
         icon: Icons.settings,
         onPressed: (){
           Get.toNamed(AppRoutes.settingScreen);
         },
         actions: [
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
                 text: 'حسابي',
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
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             UserNameText(text:'zeinab tarek'),
                             K.sizedBoxW,
                             UserProfileImage(image: 'assets/images/person.png',),
                           ],
                         ),
                         K.sizedBoxH,
                         K.sizedBoxH,
                         Text('البيانات الشخصيه ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp, color: K.blackTypingColor),),
                         Column(
                           children: [
                             ListView.builder(
                                 itemCount:conroller.accountData.length,
                                 shrinkWrap: true,
                                 padding: EdgeInsets.zero,
                                 itemBuilder: (ctx, index) =>
                                     Container(
                                       padding: EdgeInsets.symmetric(horizontal: 0.w,vertical: 5.h),
                                       margin: EdgeInsets.symmetric(horizontal: 0.w,vertical: 0.h),
                                       decoration:   BoxDecoration(
                                         border: Border(
                                           bottom: BorderSide(width: 2.0,
                                               color:K.grayColor.withOpacity(.5)),
                                         ),
                                       ),child:ListTile(
                                       contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                                       onTap: (){},
                                       title: Text('\n ${conroller.accountData[index]}',
                                         textDirection: TextDirection.rtl,
                                         style:   TextStyle(color: K.mainColor,
                                             fontSize: 20.sp, fontWeight: FontWeight.bold, height: 1),
                                       ),

                                       subtitle:  Text('\n ${conroller.subData[index]}',
                                         textDirection: TextDirection.rtl,
                                         style:   TextStyle(color: K.blackTypingColor,
                                             fontSize: 20.sp, fontWeight: FontWeight.bold, height: 1),
                                       ),

                                     ),
                                     ),)]



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

