import 'package:get/get.dart';

class RegisterController extends GetxController {
  final value = false.obs;

  checkBoxFun(bool v) {
    value.value = v;
  }
}
