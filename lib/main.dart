import 'package:b_app/helper/dio_integration.dart';
import 'package:b_app/routes/app_route.dart';
import 'package:b_app/routes/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'constant.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'helper/cache_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioUtilNew.getInstance();
  await CacheHelper.init();
  VisualDensity.adaptivePlatformDensity;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MediaQuery(
      data: const MediaQueryData(),
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) => GetMaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          // supportedLocales: const [
          //   Locale('ar', 'SA'),
          // ],
          // localizationsDelegates: [
          //   // AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          // ],
          debugShowCheckedModeBanner: false,
          theme: ThemeData( fontFamily: 'Poppins-Bold',
            appBarTheme: const AppBarTheme(backgroundColor: K.kBackGroundColor),
            scaffoldBackgroundColor: K.kBackGroundColor,
          ),
             initialRoute: AppRoutes.home,
           getPages: AppScreens.screens,
        ),
      ),
    );
  }

  //changePassScreen
//registerScreen
//postScreen

//missionScreen %%%
// otpScreen and with email
 }
