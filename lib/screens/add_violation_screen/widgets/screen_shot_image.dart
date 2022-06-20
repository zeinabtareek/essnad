import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:screenshot/screenshot.dart';

import '../../../constants/constant.dart';
import '../controller/controller.dart';

Widget buildImageWidget() {
  final controller = Get.put(AddViolationController());

  return Screenshot(
    controller: controller.screenshotController,
    child:   Container(
          height: K.height,
          width: K.width,
          padding: EdgeInsets.only(top: 30.0.h),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                K.sizedBoxH,
                SizedBox(
                    height: 140,
                    width: K.width,
                    child: Image.asset(
                      'assets/images/newlogosplashscreen.png',
                      fit: BoxFit.fill,
                    )),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      horizontalMargin:22,
                      showCheckboxColumn:true,
                      dividerThickness:2,
                      columnSpacing: 20, columns: const [
                    DataColumn(
                        label: Text('بيانات المخالفه ',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Arabic',
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text(' ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Text('التصنيف الرئيسي :', style: K.pdfTextStylr)),
                      DataCell(Text('Amitt Thakkar')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('التصنيف الفرعي: ', style: K.pdfTextStylr)),
                      DataCell(Text('Hemang Thakkar')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('درجه الاهميه:', style: K.pdfTextStylr)),
                      DataCell(Text('Shrushti Gajjar')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('رقم المخالفه : ', style: K.pdfTextStylr)),
                      DataCell(Text('Dhruvi Thrivedi')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('عنوان :', style: K.pdfTextStylr)),
                      DataCell(Text('Deep Kotharia')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('رقم الهاتف : ', style: K.pdfTextStylr)),
                      DataCell(Text('Vaibhai Patel')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(' اسم الموظف :', style: K.pdfTextStylr)),
                      DataCell(Text('Jaina Patel')),
                    ]),

                    DataRow(cells: [
                      DataCell(Text('تفاصيل اخري :', style: K.pdfTextStylr)),
                      DataCell(Text('Ritesh Patel')),
                    ]),
                  ]),
                ),
                const Divider(
                  height: 30,
                  color: K.blackTypingColor,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'الاسم:',
                //           style: K.pdfTextStylr,
                //         ),
                //         Text('................................',
                //             style: K.pdfTextStylr),
                //       ],
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text('التوقيع  ', style: K.pdfTextStylr),
                //         Text('................................',
                //             style: K.pdfTextStylr),
                //       ],
                //     ),
                //   ],
                // )
              ],
            ),
          ),


    ),
  );
}
