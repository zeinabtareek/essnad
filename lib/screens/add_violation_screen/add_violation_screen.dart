import 'package:b_app/screens/add_violation_screen/widgets/screen_shot_image.dart';
import 'package:b_app/screens/add_violation_screen/widgets/share_to_other_media.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/login_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import 'controller/controller.dart';

class AddViolationScreen extends StatefulWidget {
  @override
  State<AddViolationScreen> createState() => _AddViolationScreenState();
}

class _AddViolationScreenState extends State<AddViolationScreen> {
  final controller = Get.put(AddViolationController());

  @override
  int select = 0;
  String value1 = 'التصنيف الرئيسي';
  String value2 = 'التصنيف الفرعي';
  String value3 = 'درجه الأهميه';

  bool isSelected = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.whiteColor,
      body: SingleChildScrollView(
        child:   GetBuilder<AddViolationController>(
          init :AddViolationController(),
          builder:(controller) => Container(
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
                    text: 'إضافه مخالفه',
                    onPressed: () {
                      Get.back();
                    },
                    isSetteingIcon: false),
                Padding(
                  padding:
                      EdgeInsets.only(top: 26.h, right: 0, left: 0, bottom: 0),
                  child: Container(
                    width: K.width,
                    padding: EdgeInsets.only(
                        top: 40.h, right: 30.w, left: 30.w, bottom: 0),
                    decoration: K.boxDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LoginLabel(
                          text: 'التصنيف الرئيسي',
                          widget: Image.asset(
                            "assets/images/edit.png",
                            height: 20,
                            color: K.mainColor,
                          ),
                        ),
                        Container(
                          height: 70.h,
                          width: K.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: 0.0.w, vertical: 15.h),
                          padding: K.fixedPadding,
                          decoration: K.TextFieldboxDecoration,
                          child: DropdownButton<String>(
                            hint: Text(value1),
                            underline: SizedBox(),
                            isExpanded: true,
                            items: controller.mainCategories
                                .map<DropdownMenuItem<String>>(
                                    (value) => DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value.toString()),
                                        ))
                                .toList(),
                            onChanged: (value) {
                              setState(
                                () {
                                  this.value1 = value.toString();
                                  isSelected = true;
                                },
                              );
                            },
                          ),
                        ),
                        LoginLabel(
                          text: 'التصنيف الفرعي',
                          widget: Image.asset(
                            "assets/images/edit.png",
                            height: 20,
                            color: K.mainColor,
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        isSelected == true
                            ? Container(
                                height: 70.h,
                                width: K.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 0.0.w, vertical: 15.h),
                                padding: K.fixedPadding,
                                decoration: K.TextFieldboxDecoration,
                                child: DropdownButton<String>(
                                  hint: Text(value2),
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  items: value1 == controller.mainCategories[0]
                                      ? controller.index0
                                          .map<DropdownMenuItem<String>>((value) =>
                                              DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value.toString()),
                                              ))
                                          .toList()
                                      : value1 == controller.mainCategories[1]
                                          ? controller.index1
                                              .map<DropdownMenuItem<String>>((value) =>
                                                  DropdownMenuItem<String>(
                                                    value: value,
                                                    child:
                                                        Text(value.toString()),
                                                  ))
                                              .toList()
                                          : value1 ==
                                                  controller.mainCategories[2]
                                              ? controller.index2
                                                  .map<DropdownMenuItem<String>>((value) =>
                                                      DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(
                                                            value.toString()),
                                                      ))
                                                  .toList()
                                              : value1 ==
                                                      controller
                                                          .mainCategories[3]
                                                  ? controller.index3
                                                      .map<DropdownMenuItem<String>>(
                                                          (value) =>
                                                              DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child: Text(value
                                                                    .toString()),
                                                              ))
                                                      .toList()
                                                  : value1 ==   controller   .mainCategories[4]
                                                      ? controller.index4
                                                          .map<DropdownMenuItem<String>>(
                                                              (value) =>
                                                                  DropdownMenuItem<String>(
                                                                    value:
                                                                        value,
                                                                    child: Text(
                                                                        value
                                                                            .toString()),
                                                                  ))
                                                          .toList()
                                                      : value1 == controller.mainCategories[5]
                                                          ? controller.index5
                                                              .map<DropdownMenuItem<String>>((value) => DropdownMenuItem<String>(
                                                                    value: value, child: Text(value.toString()),)).toList() : controller.index6
                                                              .map<DropdownMenuItem<String>>((value) => DropdownMenuItem<String>(
                                                                    value:
                                                                    value,
                                                                    child: Text(
                                                                        value
                                                                            .toString()),
                                                                  ))
                                                              .toList(),
                                     onChanged: (value) {setState(() {this.value2 = value.toString();},);},),)
                            : Container(
                                height: 70.h,
                                width: K.width,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 0.0.w, vertical: 15.h
                                ),
                                padding: K.fixedPadding,
                                decoration: K.TextFieldboxDecoration,
                                child: DropdownButton(
                                  hint: Text(value2),
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  items: items,
                                  onChanged: (String? value) {},),),
                           LoginLabel(
                            text:  'درجه الأهميه',
                            widget: Image.asset(
                            "assets/images/edit.png", height: 20,
                            color: K.mainColor,
                          ),),
                        Container(
                                height: 70.h,
                                width: K.width,
                                margin: EdgeInsets.symmetric(horizontal: 0.0.w, vertical: 15.h),
                                padding: K.fixedPadding,
                                decoration: K.TextFieldboxDecoration,
                                child: DropdownButton(
                                  hint: Text(value3),
                                  underline: SizedBox(),
                                  isExpanded: true,
                                  items: controller.options.
                                    map((e) => DropdownMenuItem<String>(
                                    value: e, child: Text(e.toString()),)).toList(),
                                  onChanged: (value) {setState(() {this.value3 = value.toString();},);}),),
                                LoginButton(
                                  onTap: (){
                                    Get.toNamed(AppRoutes.postScreen);
                                  },
                                  customWidth: true,
                                  width: 200,
                                  label: "  التالي ",
                                ),


                          ],),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
          ),

    );
  }
  List<DropdownMenuItem<String>> items = [];
 }
