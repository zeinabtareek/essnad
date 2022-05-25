import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileController extends GetxController {
  final checkTapped = false.obs;
  final selectedIndex = 0.obs;

  isTapped(int index) {
    checkTapped.value = !checkTapped.value;
    update();
  }

  selected(int index) {
    selectedIndex.value = index;
  }

  List<String> accountData = [
    'الاسم',
    'رقم الجوال  ',
    'البريد الإلكتروني ',
  ];
  List<String> subData = [
    'zeinab tarek ',
    '011222211122',
    ' testmail@gamil.com ',
  ];
}
