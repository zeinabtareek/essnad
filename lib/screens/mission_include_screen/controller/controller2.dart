import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MissionController extends GetxController {

  Rx<List<dynamic>> selectedOptionList = Rx<List<dynamic>>([]);
  var selectedOption = ''.obs;
  bool isClicked=false;
  List<dynamic> options =
  ["المهمه ١", "المهمه ٢", "المهمه ٣", "المهمه ٤"];
  List<dynamic> optionss = ["التصنيف الرئيسي", "التصنيف الفرعي", "المهمه ٣", "المهمه ٤"];

  List<dynamic> AddNewMissionScreen = ["فردي", "في محموعه", ];


}