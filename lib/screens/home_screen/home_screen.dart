import 'package:b_app/screens/add_violation_screen/widgets/add_news.dart';
import 'package:b_app/screens/add_violation_screen/add_violation_screen.dart';
import 'package:b_app/screens/map_screen/map_screen.dart';
import 'package:b_app/screens/mission_include_screen/mission_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/appbar.dart';
import '../../componant/custom_services_card.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/serch_text_field2.dart';
import '../../componant/text_home_screen.dart';
import '../../componant/user_profile_image.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../about_us_screen/about_us_screen.dart';
import '../contact_us_screen/contact_us_screen.dart';
import '../tasks_screen/tasks_screen.dart';
import '../tasks_types_screen/tasks_types_screen.dart';
import 'controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: K.mainColor,
      body: SingleChildScrollView(
        child: Container(
          height: K.height,
          decoration: K.mainBoxDecoration,
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
                  isSetteingIcon: false),
              Container(
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
                    text: 'الخدمات ',
                    size: 20,
                  ),
                ),
                SizedBox(
                  height: 190.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.listIcon.length,
                    itemBuilder: (ctx, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomServicesCard(
                        color: K.darkGreen,
                        controller: controller,
                        image: controller.listIcon[index],
                        text: controller.listData[index],
                        onTap: () {
                          if (index == 0) {
                            Get.to(ContactUsScreen());
                          } else if (index == 1) {
                            Get.to(MapScreen());
                          } else if (index == 2) {
                            Get.to(AboutUsScreen());
                          }
                        }, isHomeScreen: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ));
  }
}
