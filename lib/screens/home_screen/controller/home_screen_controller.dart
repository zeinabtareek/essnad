import 'package:b_app/routes/app_route.dart';
import 'package:b_app/screens/add_violation_screen/add_violation_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../login_screen/login_screen.dart';

class HomeScreenController extends GetxController{


  List listData=
      [
        'تواصل معنا',
        'النطاق الاشرافي',// جواها خريطه
        'عن التطبيق',
      ];
  List listIcon=
      ['assets/images/phoneIcon.png',
        'assets/images/second_icon.png',
        'assets/images/tarck.png',
  ];
}