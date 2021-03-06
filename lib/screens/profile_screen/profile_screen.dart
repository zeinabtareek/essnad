import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/user_name_text.dart';
import '../../componant/user_profile_image.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import 'controller.dart';

class ProfileScreen extends StatelessWidget {
    const ProfileScreen({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
     final controller=Get.put(ProfileController());

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
               SizedBox(height: 150.h,),
               LoginCustomText(size: 30.sp, text: 'حسابي',
                   onPressed: (){Get.back();},
                   isHome:true,
                   isSetteingIcon:true),
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
                   child:Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           UserNameText(text:'zeinab tarek'),
                           K.sizedBoxW,
                           UserProfileImage(image: 'assets/images/person.png',),
                         ],
                       ),
                       Text('البيانات الشخصيه ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp, color: K.blackTypingColor),),
                       ListView.builder(
                         physics: const ClampingScrollPhysics(),
                           itemCount:controller.accountData.length,
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
                                 title: Text('\n ${controller.accountData[index]}',
                                   textDirection: TextDirection.rtl,
                                   style:   TextStyle(color: K.mainColor,
                                       fontSize: 20.sp, fontWeight: FontWeight.bold, height: 1),
                                 ),

                                 subtitle:  Text('\n ${controller.subData[index]}',
                                   textDirection: TextDirection.rtl,
                                   style:   TextStyle(color: K.blackTypingColor,
                                       fontSize: 20.sp, fontWeight: FontWeight.bold, height: 1),
                                 ),
                               ),
                               ),),
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

