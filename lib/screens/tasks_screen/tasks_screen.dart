import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/custom_tasks_status_button.dart';
import '../../componant/custom_text_field.dart';
import '../../componant/fixed_list_tile.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import 'controller/tasks_controller.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({Key? key}) : super(key: key);
  final controller =Get.put(TasksController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // remove color from appbar
      appBar: CustomAppBar(
        isPassScreen:   true,
        icon: Icons.settings,

        actions: [
          IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_forward_ios, color: K.whiteColor,),),
          K.sizedBoxW,
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
                text: ' المهام  ',
              ),
              K.sizedBoxH,
              Padding(
                padding:
                EdgeInsets.only(top: 10.h, right: 0, left: 0, bottom: 0),
                child: Container(
                  height: K.height,
                  width: K.width,
                  padding: EdgeInsets.only(
                      top: 20.h, right: 20.w, left: 20.w, bottom: 0),
                  decoration: const BoxDecoration(
                      color: K.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child:
                          ListView.builder(
                              physics: ClampingScrollPhysics(),
                              itemCount:9,
                              shrinkWrap: true,
                              // scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              itemBuilder: (ctx, index) =>  Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                color: K.whiteColor,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 10.h),
                                  // height: 90.h,
                                    width:K.width,
                                    child: Wrap(
                                      crossAxisAlignment: WrapCrossAlignment.start,
                                    alignment: WrapAlignment.end,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 10.h),
                                        width:K.width,
                                        child: Text(
                                          'دلم عليه ويحمله علي النطق ، فينضف بها مقترنا  بالمتصطف الزي يحمله القانون',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: K.grayColor,
                                              fontFamily: "Poppins-Bold"),
                                        ),
                                      ),
                                      K.sizedBoxH,
                                      K.sizedBoxH,
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:   [
                                          CustomTasksStatusButton(
                                            text: index!=0?'جديده':'منتهيه',
                                            isFinished: index!=0?true:false,),
                                        const Text(
                                          '21:14:59 2022-04-16',
                                          style: TextStyle(),
                                          textDirection: TextDirection.ltr,
                                        ),

                                      ],),
                                      // K.sizedBoxH,
                                    ],
                                  )
                                ),
                              )
                      )
                  ),
                ),


            ],
          ),
        ),
      ),
    );
  }
}

