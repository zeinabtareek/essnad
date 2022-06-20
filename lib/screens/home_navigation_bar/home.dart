import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../constants/constant.dart';
import '../home_screen/home_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../tasks_slider_screen/tasks_slider_screen.dart';
import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      ProfileScreen(),
      HomeScreen(),
      // TasksScreen(),
      TasksSliderScreen(),
    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor:K.whiteColor,
        body: Obx(() => Center(
              child: body.elementAt(_controller.selectIndex),
            )),
        bottomNavigationBar: Obx(() =>
                ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15), topRight: Radius.circular(25)),
                child: BottomNavigationBar(
                  items:     <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon:   Image.asset('assets/images/personIcon.png',
                          height: 22,
                          color: _controller.selectIndex == 0
                              ? K.mainColor
                              : K.mainColor.withOpacity(.8)),
                      label: 'حسابي',
                    ),

                    BottomNavigationBarItem(
                      icon:   Image.asset('assets/images/home.png',
                          height: 25,
                          color: _controller.selectIndex == 1
                              ? K.mainColor
                              : K.mainColor.withOpacity(.8)),
                      label: 'اسناد'
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/taskicon.png',
                          height: 25,
                          color: _controller.selectIndex == 2
                              ? K.mainColor
                              : K.mainColor.withOpacity(.8)),
                      label: 'الخدمات',
                    ),
                  ],
                  selectedItemColor: K.mainColor,
                  unselectedItemColor: K.mainColor.withOpacity(.8),
                  backgroundColor:K.kBackGroundColor,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _controller.selectIndex,
                  onTap: (index) {_controller.select(index);},
              ),
            )
        ),
    );
  }
}
