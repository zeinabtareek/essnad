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
              LoginCustomText(size: 30.sp, text: ' المعالجه',onPressed: (){Get.back();},isSetteingIcon:false),
               Container(
                 margin: EdgeInsets.only(top: 26.h, right: 0, left: 0, bottom: 0),
                    padding: EdgeInsets.only(top: 40.h, right: 16.w, left: 16.w, bottom: 0),
                    decoration: const BoxDecoration(
                        color: K.whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Column(
                      children: [
                        SizedBox(
                            child: Image.asset('assets/images/second_icon.png'),
                          height: 83.h,
                          width: 111.w,
                        ),
                        K.sizedBoxH,
                        ListView.builder(
                                  physics: ClampingScrollPhysics(),
                                  itemCount:9,
                                  shrinkWrap: true,
                                  // scrollDirection: Axis.horizontal,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (ctx, index) =>  Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        side: new BorderSide(color:K.blackTypingColor, width: .5),

                                        borderRadius: BorderRadius.circular(10)),
                                    color: K.whiteColor,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 10.h),
                                      // height: 90.h,
                                        width:K.width,
                                        child: LayoutBuilder(
                                            builder: (context, BoxConstraints constraints) {
                                              return Container(
                                                width: constraints.maxWidth,
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                        width: constraints.maxWidth*0.4,//70%
                                                      height:97.h,
                                                        // color: K.blackTypingColor,
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            CustomTasksStatusButton(
                                                                        text: ' تعديل',
                                                                        image: 'assets/images/edit.png',
                                                                        ),
                                                            Text('المزيد من التفاصيل'.trim(),style: TextStyle(color: K.mainColor,decoration: TextDecoration.underline),)
                                                          ],
                                                        ),
                                                    ),
                                                    Container(
                                                        width: constraints.maxWidth*0.6,
                                                      // height:97.h,

                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        children: [
                                                          Text(
                                                            'التشوه البصري ',
                                                            maxLines: 1,
                                                            overflow: TextOverflow.ellipsis,
                                                            textDirection: TextDirection.ltr,
                                                            style: TextStyle(fontSize: 20.sp,
                                                                color: K.grayColor,),
                                                          ),  Text(
                                                            'رمي مخلفات البناء ',
                                                            maxLines: 1,
                                                            overflow: TextOverflow.ellipsis,
                                                            textDirection: TextDirection.ltr,
                                                            style: TextStyle(fontSize: 18.sp,height: 2,
                                                                color: K.blackTypingColor,),
                                                          ),  Wrap(
                                                            children: [
                                                              Text(' مكه المكرمه',
                                                                maxLines: 1,
                                                                textDirection: TextDirection.ltr,
                                                                style: TextStyle(fontSize: 18.sp,
                                                                  color: K.blackTypingColor,),
                                                              ),Icon(Icons.location_on_outlined,color: K.blackTypingColor,),

                                                            ],
                                                          ), ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            })
                                    ),
                                  )
                          ),
                      ],
                    )

                ),


            ],
          ),
        ),
      ),
    );
  }
}

