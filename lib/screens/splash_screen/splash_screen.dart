
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:b_app/screens/load_screen.dart';
import 'package:b_app/screens/register_screen/first_register_scree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../componant/text_home_screen.dart';
import '../../constants/constant.dart';
import '../home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
    SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ColorFiltered(
        //   colorFilter:
        //       ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.xor),
        //   child:
          Image.asset(
            "assets/images/splash.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            color: K.secondaryColor.withOpacity(.7),
            colorBlendMode: BlendMode.softLight,
          ),
      Scaffold(
              backgroundColor: Colors.transparent,
              body: AnimatedSplashScreen(
                splash:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Directionality(
                             textDirection: TextDirection.rtl,
                            child:  Center(child:  TextHomeScreen(text: 'إسناد | Esnad ', size: 36,),)
                        ),
                        SizedBox(
                          child: Text('  بلدية الشرائع الفرعية',style: TextStyle(color: K.whiteColor,fontSize: 30.sp,height: 2),),
                        ),
                        Spacer(),
                      ],
                ),
                nextScreen:   LoadingScreen(),
                backgroundColor: Colors.transparent,
                splashIconSize: 250,
                duration: 4000,
                // splashTransition: SplashTransition.rotationTransition,
                animationDuration: const Duration(seconds: 1),
              ),
            ),

          Align(
            alignment: Alignment.bottomCenter,

            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.spaceAround,
                children: [
                  SizedBox(height: 90.h,width: 150, child: Image.asset('assets/images/newlogosplashscreen.png',color: K.whiteColor,fit: BoxFit.fill,),),
                  // SizedBox(height: 60.h, child: Image.asset('assets/images/logo4.png',color: K.whiteColor),),
                  K.sizedBoxW,
                  SizedBox(height: 70.h,  child: Image.asset('assets/images/whitefirst.png'),),
                  K.sizedBoxW,
                  // SizedBox(height: 60.h, child: Image.asset('assets/images/logo2.png',color: K.whiteColor,fit: BoxFit.contain, ),),
                  // K.sizedBoxW,
                  // SizedBox(height: 60.h, child: Image.asset('assets/images/logo3.png',color: K.whiteColor,),),
                ],

              ),
            ),
        ),
        K.sizedBoxH,
            ]
    );
  }
}
