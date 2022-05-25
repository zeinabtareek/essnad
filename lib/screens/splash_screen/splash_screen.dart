import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componant/button_task.dart';
import '../../constant.dart';
import '../home_navigation_bar/home.dart';
import '../home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ColorFiltered(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.xor),
          child: Image.asset(
            "assets/images/images.jpeg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            color: K.secondaryColor.withOpacity(.7),
            colorBlendMode: BlendMode.softLight,
          ),
        ),
      Scaffold(
              backgroundColor: Colors.transparent,
              body: AnimatedSplashScreen(
                splash:  Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.center,
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child:  Center(child:  TextHomeScreen(text: ' وكاله البلديات  ', size: 30,),)
                        ), SizedBox(
                            width: double.infinity,
                            child:  Center(child:  TextHomeScreen(text: 'بلدية الشرائع الفرعية', size: 30,),)
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        ButtonTasks(
                          f: K.firstColorAddButton,
                          s: K.secColorAddButton,
                          text: 'إسناد  |ESNAAD ',),
                        // SizedBox(height: 50.h,),
                        ButtonTasks(
                          f: K.firstColor3rdButton,
                          s: K.secColor3rdtButton,
                          text: 'مكتب رئيس البلدية',),
                        // SizedBox(
                        //   width: 100,
                        //   height: 80,
                        //   child: Image.asset("assets/images/esnad.png"),
                        // ),
                        SizedBox(
                          height: 200.h,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 100.h,width: 150.w,child: Image.asset('assets/images/whitefirst.png'),),
                              SizedBox(height: 100.h,width: 150.w,child: Image.asset('assets/images/esnad.png',color: K.whiteColor,),),
                            ],
                          ),
                        ),
                      ],
                ),
                nextScreen: const LoginScreen(),
                backgroundColor: Colors.transparent,
                splashIconSize: 250,
                duration: 4000,
                // splashTransition: SplashTransition.scaleTransition,
                // animationDuration: const Duration(seconds: 1),
              ),
            )
            ]
    );
  }
}
