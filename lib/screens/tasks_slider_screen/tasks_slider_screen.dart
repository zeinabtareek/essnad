import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_services_card.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/offer_card.dart';
import '../../componant/serch_text_field2.dart';
import '../../componant/text_home_screen.dart';
import '../../componant/user_profile_image.dart';
import '../../constant.dart';
import '../add_violation_screen/add_news.dart';
import '../add_violation_screen/add_violation_screen.dart';
import '../home_screen/controller/home_screen_controller.dart';
import '../mission_include_screen/mission_screen.dart';
import '../tasks_screen/tasks_screen.dart';
import 'controller/tasks_slider_controller.dart';


class TasksSliderScreen extends StatelessWidget {
  final _controller = Get.put(TasksSliderController());
  final _homecontroller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: K.mainColor,
        body: SingleChildScrollView(
          child: Container(
            height: K.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                K.mainColor,
                K.secondaryColor,
              ],
            )),
            child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  LoginCustomText(
                      size: 30.sp,
                      text: ' ',
                      isHome: true,
                      onPressed: () {
                        Get.back();
                      },
                      isSetteingIcon: true),
                  Container(
                    // height: 167.h,
                    width: K.width - 50,
                    padding: EdgeInsets.symmetric(vertical: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.sp),
                      color: K.kBackGroundColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        UserProfileImage(image: 'assets/images/person.png'),
                        K.sizedBoxH,
                        TextHomeScreen(
                          text: 'مرشد جابر نواف مكي',
                          size: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' مكه المكرمه',
                              style: TextStyle(
                                  color: K.whiteColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                              textDirection: TextDirection.ltr,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.location_on_outlined,
                                color: K.whiteColor,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 43.h),
                    child: SearchTextField2(
                      text: 'هل تبحث عن شئ ؟',
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextHomeScreen(
                      size: 25,
                      text: ' الخدمات ',
                    ),
                  ),
                   CarouselSlider.builder(
                        itemCount: _controller.images.length,
                        itemBuilder: (context, index, realIndex) {
                          return
                            CustomServicesCard(
                            controller: _homecontroller,
                            image:
                            _controller.images[index],
                            text:_controller.listData[index],
                            onTap: () {
                              if (index == 0) {
                                Get.to(AddViolationScreen());}
                              else if (index == 1) {
                                Get.to(MissionScreen());
                              } else if (index == 2) {
                                Get.to(AddNewsScreen());
                              } else if (index == 3) {
                                Get.to(TasksScreen());
                              }else if (index == 4) {
                               Get.to(AddNewsScreen());
                              }
                            },
                              color: _controller.colorsList[index], isHomeScreen: false,
                          );
                        },
                      options: CarouselOptions(
                        autoPlay: false,
                        height: 200.0,
                        viewportFraction: 0.30,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        onPageChanged: (index, reason) {
                          print(index);
                          _controller.currentIndex.value = index;
                        },
                      ),
                        ),
                ]),
          ),
        ));
  }
}
