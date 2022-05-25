import 'package:b_app/routes/app_route.dart';
import 'package:b_app/screens/add_violation_screen/add_violation_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../login_screen/login_screen.dart';

class HomeScreenController extends GetxController{


  List listData=
      [
        'رصد المخالفه',
        'متابعه المخالفه',
        'خبر',


      ];
  List listIcon=
      ['assets/images/addpic.png',
        'assets/images/second_icon.png',
        'assets/images/second_icon.png',
  ];
}