
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../constant.dart';
import '../home_screen/home_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../setteing_screen/setting_screen.dart';
import '../tasks_screen/tasks_screen.dart';
import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      ProfileScreen(),
      TasksScreen(),
      HomeScreen(),
    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor:K.mainColor,
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
                      icon: Icon(Icons.person,size: 35.sp,),
                      label: 'حسابي',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.menu,size: 35.sp,),
                      label: 'المخالفات',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined,size: 35.sp,),
                      label: 'الرئيسيه'
                    ),
                  ],
                  selectedItemColor: K.mainColor,
                  unselectedItemColor: K.whiteColor,
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
