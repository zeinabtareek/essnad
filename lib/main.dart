import 'package:b_app/helper/dio_integration.dart';
import 'package:b_app/routes/app_route.dart';
import 'package:b_app/routes/app_screen.dart';
import 'package:b_app/screens/tasks_screen/tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'constants/constant.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'controller/auth_controller.dart';
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
  final controller =Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return

      // MediaQuery(
      //
      // child:
      ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) => MediaQuery(
          data: const MediaQueryData(),
          child: GetMaterialApp(
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('ar', 'SA'),
            ],

            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'HacenTunisia',
              textTheme: const TextTheme(
                headline1:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
                button: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    fontFamily: 'Arial',
                    letterSpacing: 1.25),
              ),
              appBarTheme: const AppBarTheme(backgroundColor: K.kBackGroundColor),
              scaffoldBackgroundColor: K.kBackGroundColor,
            ),
            // home: TasksScreen(addressName: 'vkmvkmv',),
            initialRoute: AppRoutes.splashScreen,
            getPages: AppScreens.screens,
          ),
        ),
      // ),
    );
  }
}
