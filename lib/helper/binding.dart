import 'package:b_app/screens/login_screen/controller/login_controller.dart';
import 'package:get/get.dart';

import '../screens/add_new_mission_screen/controller/new_mission_controller.dart';
 import '../screens/mission_include_screen/controller/controller2.dart';
import '../screens/otp_screen/controller/otp_controller.dart';
import '../screens/profile_screen/controller.dart';


class Binding extends Bindings {
  @override
  void dependencies (){
     Get.lazyPut(() => ProfileController());
     Get.lazyPut(() => NewMissionController());
     Get.lazyPut(() => MissionController());
     Get.lazyPut(() => LoginController());



  }
}