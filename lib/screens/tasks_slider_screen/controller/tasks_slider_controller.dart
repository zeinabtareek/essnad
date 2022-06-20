import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../constant.dart';

class TasksSliderController extends GetxController{
  final boardController = PageController();
  final CarouselController controller = CarouselController();
  final currentIndex = 0.obs;

  List images =[
    'assets/images/mat.png',
    'assets/images/mat.png',
    'assets/images/second_icon.png',
    'assets/images/tarck.png',
    'assets/images/tarck.png',
  ];
  List listData=
  [
    'الملف الاخباري', // زي اضافه مخالفه اللي في الux
    'مؤشر الآداء',
    'رصد ملاحظه',
    ' المعالجه',
    ' المهام',
    // Get.to(TasksTypesScreen());

  ];
List colorsList=
  [
    K.darkGreen,
    K.secColorSecButton,
    K.secondaryColor,
    K.firstColorSecButton,
    K.secondaryColor,

  ];







}