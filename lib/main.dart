import 'package:b_app/routes/app_route.dart';
import 'package:b_app/routes/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: K.kBackGroundColor),
            scaffoldBackgroundColor: K.kBackGroundColor,
          ),
          initialRoute: AppRoutes.splashScreen,
          getPages: AppScreens.screens,
        ),
      ),
    );
  }
}
