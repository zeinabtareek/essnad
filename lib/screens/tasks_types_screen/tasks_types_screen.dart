import 'package:b_app/routes/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
 import '../../componant/appbar.dart';
import '../../componant/button_task.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import 'controller/tasks_types_controller.dart';

class TasksTypesScreen extends StatelessWidget {
  final controller = Get.put(TasksTypesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // remove color from appbar
      body: Container(
        width: K.width,
        height: K.height,
        decoration: K.mainBoxDecoration,
        child: SingleChildScrollView(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            alignment: WrapAlignment.center,
            children: [
              K.sizedBoxH,
              SizedBox(height: 120.h,),
              LoginCustomText(size: 30.sp, text: 'المهام',onPressed: (){Get.back();},isSetteingIcon:false),
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 40.h,),
                        ButtonTasks(
                          f: K.firstColorFirstButton,
                          s: K.secColorFirstButton,
                          text: controller.buttonLabel[0],
                        ),
                        K.sizedBoxH,
                        ButtonTasks(
                          f: K.firstColorSecButton,
                          s: K.secColorSecButton,
                          text: controller.buttonLabel[1],
                        ),
                        K.sizedBoxH,
                        ButtonTasks(
                          f: K.firstColor3rdButton,
                          s: K.secColor3rdtButton,
                          text: controller.buttonLabel[2],
                        ),
                        /**indicator first try for the indicator**/
                        SizedBox(height: 30.h,),

                        Stack(children: <Widget>[
                          Container(
                            width: 150,
                            height: 150,
                            padding: EdgeInsets.all(10),
                            child: const CircularProgressIndicator(
                              value: 0.99,
                              strokeWidth: 15.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  K.firstColorFirstButton),
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 150,
                            height: 150,
                            child: const CircularProgressIndicator(
                              value: 0.7,
                              strokeWidth: 15.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  K.secColorSecButton),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 150,
                            height: 150,
                            child: const CircularProgressIndicator(
                              value: 0.11,
                              strokeWidth: 15.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  K.firstColor3rdButton),
                            ),
                          ),
                        ]),
                        SizedBox(height: 30.h,),
                        /**second try for the indicator**/
                        // CircularPercentIndicator(
                        //   radius: 130.0,
                        //   animation: true,
                        //   animationDuration: 1200,
                        //   lineWidth: 15.0,
                        //   percent: 0.4,
                        //   center: Center(
                        //     child: Icon(Icons.location_on),
                        //   ),
                        //   circularStrokeCap: CircularStrokeCap.butt,
                        //   backgroundColor: Colors.deepPurple,
                        //   progressColor: Colors.green,
                        // ),
                        SizedBox(height: 30.h,),
                        InkWell(
                          child: ButtonTasks(
                            f: K.firstColorAddButton,
                            s: K.secColorAddButton,
                            text: controller.buttonLabel[3], ),
                          onTap: (){
                            Get.toNamed(AppRoutes.addNewMissionScreen);
                          },
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
