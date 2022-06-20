import 'package:b_app/screens/register_screen/register_screen.dart';
import 'package:get/get.dart';

import '../screens/add_new_mission_screen/add_new_mission_screen.dart';
import '../screens/add_violation_screen/add_news.dart';
import '../screens/add_violation_screen/add_violation_screen.dart';
import '../screens/change_password_screen/change_password_screen.dart';
import '../screens/contact_us_screen/contact_us_screen.dart';
import '../screens/home_navigation_bar/home.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/load_screen.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/map_screen/map_screen.dart';
import '../screens/mission_include_screen/mission_screen.dart';
import '../screens/otp_screen/otp_screen.dart';
import '../screens/post_screen/post_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/register_screen/first_register_scree.dart';
import '../screens/setteing_screen/setting_screen.dart';
import '../screens/splash_screen/splash_screen.dart';
import '../screens/tasks_screen/tasks_screen.dart';
import '../screens/tasks_slider_screen/tasks_slider_screen.dart';
import '../screens/tasks_types_screen/tasks_types_screen.dart';
import 'app_route.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.profileScreen, page: () => ProfileScreen()),
    GetPage(name: AppRoutes.loadingScreen, page: () => LoadingScreen()),
    GetPage(name: AppRoutes.postScreen, page: () => PostScreen()),
    GetPage(name: AppRoutes.home, page: () => const Home()),
    GetPage(name: AppRoutes.missionScreen, page: () => MissionScreen()),
    GetPage(name: AppRoutes.mapScreen, page: () => MapScreen()),
    GetPage(name: AppRoutes.postScreen, page: () => PostScreen()),
    GetPage(name: AppRoutes.settingScreen, page: () => SettingScreen()),
    GetPage(name: AppRoutes.splashScreen, page: () => SplashScreen()),
    GetPage(name: AppRoutes.tasksScreen, page: () => TasksScreen()),
    GetPage(name: AppRoutes.firstRegisterScreen, page: () => FirstRegisterScreen()),
    GetPage(name: AppRoutes.tasksTypesScreen, page: () => TasksTypesScreen()),
    GetPage(name: AppRoutes.homeScreen, page: () => HomeScreen()),
    GetPage(name: AppRoutes.changePassScreen, page: () => ChangePassScreen()),
    GetPage(name: AppRoutes.addNewsScreen, page: () => AddNewsScreen()),
    GetPage(name: AppRoutes.contactUsScreen, page: () => ContactUsScreen()),
    GetPage(name: AppRoutes.otpScreen, page: () => OtpScreen()),
    GetPage(name: AppRoutes.tasksSliderScreen, page: () => TasksSliderScreen()),
    GetPage(name: AppRoutes.addNewMissionScreen, page: () => AddNewMissionScreen()),
    GetPage(
        name: AppRoutes.addViolationScreen, page: () => AddViolationScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () => RegisterScreen()),
  ];
}
