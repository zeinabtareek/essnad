import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../componant/appbar.dart';
import '../../componant/add_photo.dart';
import '../../componant/button_task.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import 'controller/tasks_types_controller.dart';

class TasksTypesScreen extends StatelessWidget {
  final controller = Get.put(TasksTypesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // remove color from appbar
      appBar: CustomAppBar(
        icon: Icons.settings,
        actions: [
          IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_forward_ios, color: K.whiteColor,),),
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
                text: 'المهام',
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        K.sizedBoxH,
                        K.sizedBoxH,
                        K.sizedBoxH,
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
                        K.sizedBoxH,
                        /**indicator first try for the indicator**/
                        K.sizedBoxH,
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
                        K.sizedBoxH,
                        K.sizedBoxH,
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
                        K.sizedBoxH,
                        K.sizedBoxH,

                        ButtonTasks(
                          f: K.firstColorAddButton,
                          s: K.secColorAddButton,
                          text: controller.buttonLabel[3],
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
