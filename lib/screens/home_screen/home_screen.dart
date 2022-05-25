import 'package:b_app/screens/add_violation_screen/add_news.dart';
import 'package:b_app/screens/add_violation_screen/add_violation_screen.dart';
import 'package:b_app/screens/mission_include_screen/mission_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/appbar.dart';
import '../../componant/search_text_field.dart';
import '../../componant/serch_text_field2.dart';
import '../../componant/user_profile_image.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import 'controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent, // remove color from appbar
      appBar: CustomAppBar(
        isPassScreen: true,
        icon: Icons.settings,
        onPressed: (){
          Get.toNamed(AppRoutes.settingScreen);
        },
        actions: [
          K.sizedBoxW,
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 100.h),
            width: K.width,
            height: K.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  K.mainColor,
                  K.secondaryColor,
                ],
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 200.h,
                    width: K.width,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                        TextHomeScreen(text: 'مرشد جابر نواف مكي',size: 20,),
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
                  K.sizedBoxH,
                  SearchTextField2(
                    text: 'هل تبحث عن شئ ؟',
                  ),
                  K.sizedBoxH,
                  K.sizedBoxH,
                  TextHomeScreen(
                    size: 20,
                    text: 'المخالفات المضافه حديثا ',
                  ),
                ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              alignment: WrapAlignment.end,
              children: [
                TextHomeScreen(
                  text: 'الخدمات ', size: 20,
                ),
                K.sizedBoxH,
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: GridView.count(
                    crossAxisCount: 1,
                    // crossAxisSpacing: 10,
                    padding: EdgeInsets.zero,
                    childAspectRatio: 10 / 3,
                    shrinkWrap: true,
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: ScrollPhysics(),
                        itemCount: controller.listData.length,
                        itemBuilder: (context, index) {
                          return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              shadowColor: Colors.blueAccent,
                              elevation: 15,
                              child: ClipPath(
                                clipper: ShapeBorderClipper(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: InkWell(
                                  child: Container(
                                    width: 110.0,
                                    height: 60.0,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              color: K.darkGreen, width: 15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 40.w,
                                          height: 40.h,
                                          child: Image.asset(
                                            controller.listIcon[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Text(controller.listData[index]),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    if (index == 0) {
                                      Get.to(AddViolationScreen());
                                    } else if (index == 1) {
                                      Get.to(MissionScreen());
                                    } else if (index == 2) {
                                      Get.to(AddNewsScreen());
                                    } else if (index == 3) {}
                                  },
                                )
                              ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextHomeScreen extends StatelessWidget {
  String text;
  int size;

  TextHomeScreen({
    Key? key,
    required this.text,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
          color: K.whiteColor, fontSize: size.sp, fontWeight: FontWeight.bold),
    );
  }
}
