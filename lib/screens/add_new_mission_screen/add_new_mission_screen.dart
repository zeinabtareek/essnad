import 'package:b_app/componant/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import '../../componant/custom_container_text_field.dart';
import '../../componant/custom_drop_down.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../mission_include_screen/controller/controller2.dart';
import 'controller/new_mission_controller.dart';
import 'dart:async';

class AddNewMissionScreen extends StatelessWidget {
   final controller = Get.put(NewMissionController());
  final missionController = Get.put(MissionController());

  final List _tags = [
    'عاجل',
    'جديد',
    'للمراجعه',
  ];
  List<Object?> _selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
       body:  SingleChildScrollView(
          child: Container(
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
                K.sizedBoxH,
                SizedBox(
                  height: 120.h,
                ),
                LoginCustomText(
                    size: 30.sp,
                    text: ' مهمه جديده',
                    onPressed: () {
                      Get.back();
                    },
                    isSetteingIcon: true),
                Padding(
                  padding:
                      EdgeInsets.only(top: 26.h, right: 0, left: 0, bottom: 0),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                    decoration: K.boxDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const postCustomTextFieldWidget(
                          height: 60,
                          text:
                              'عنوان المهمه (مثال :مهمه اداريه ، التواصل مع السكان...الخ) ',),
                        K.sizedBoxH,
                        GetBuilder(
                          init: NewMissionController(),
                          builder: ( NewMissionController)=> Container(
                            height: 60.h,
                            width: K.width,
                            // padding: EdgeInsets.all(2),
                            decoration: K.boxDecoration,
                            child: ElevatedButton(
                              onPressed: () async {
                                final date = await controller.showCalender(context);
                                if (date == null) return;
                                controller.selectedDate = date;
                                print(controller.dateTime.value);
                                print(controller.selectedDate);
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        K.whiteColor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.0.w, vertical: 2.0.h),
                                    child: Text(
                                        controller.selectedDate == null
                                            ? ''
                                            : "${controller.selectedDate.hYear}/${controller.selectedDate.hMonth}/${controller.selectedDate.hDay}",
                                        style: TextStyle(
                                          color: K.mainColor,
                                          fontSize: 15.sp,
                                        )),
                                  ),
                                  Image.asset('assets/images/calender.png',
                                      height: 25, color: K.orangeColor)
                                ],
                              ),
                            ),
                          ),
                        ),
                        K.sizedBoxH,
                        CustomDropDown(
                            controller: missionController,
                            isaddNewMissionScreen: true,
                            initialValue:
                                missionController.AddNewMissionScreen[0],
                            icon: Image.asset(
                              'assets/images/person.png',
                              height: 25,
                            ),
                            onchange: (v) {
                              missionController.selectedOption.value = v;
                            }),
                        Text(
                          'التفاصيل',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 25.sp,
                              color: K.mainColor),
                        ),
                        Container(
                          decoration: K.TextFieldboxDecoration,
                          padding: K.fixedPadding,
                          margin: EdgeInsets.symmetric(
                              horizontal: 0.0.w, vertical: 15.h),
                          child: MultiSelectDialogField(
                            buttonIcon: Icon(Icons.select_all_rounded),
                            checkColor: K.mainColor,
                            decoration: K.boxDecoration,
                            searchHint: 'اختار',
                            selectedColor: K.secondaryColor,
                            selectedItemsTextStyle: const TextStyle(
                                fontSize: 20, color: K.whiteColor),
                            items: _tags
                                .map((e) => MultiSelectItem(e, e))
                                .toList(),
                            listType: MultiSelectListType.CHIP,
                            buttonText: const Text(
                              "الاهميه",
                              style:
                                  TextStyle(fontSize: 20, color: K.mainColor),
                            ),
                            onConfirm: (values) {
                              _selected = values;
                            },
                          ),
                        ),
                        const postCustomTextFieldWidget(
                          height: 150,
                          text: 'نص المهمه .....الخ',
                        ),
                        K.sizedBoxH,
                        Text(
                          'المرفقات',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 25.sp,
                              color: K.mainColor),
                        ),
                        K.sizedBoxH,
                        Center(
                          child: Container(
                            color: K.firstColor3rdButton,
                            height: 50.h,
                            // width: 50.w,
                            child: Image.asset(
                              'assets/images/addpic.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        K.sizedBoxH,
                        Center(
                          child: LoginButton(
                            onTap: () {},
                            label: "حفظ",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
