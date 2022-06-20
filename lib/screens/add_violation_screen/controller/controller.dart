import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:printing/printing.dart';
import 'package:flutter/material.dart';
 import 'package:printing/printing.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../data.dart';
import '../printable_data.dart';
class AddViolationController extends GetxController{

  List<dynamic> options =
  [ "عاديه", " مهمه", " مهمه للغايه"];
List<String> mainCategories=[
  'التشوهات البصرية',
  'مراقبة البناء',
  'المرافق البلدية',
  'الأسواق التجارية',
  'المواد الغذائية',
  'النظافة العامة',
  'غير مصنفة',
];
List<String> index0=[ //التشوهات البصرية
  'المباني المهجورة ',
  'تناظرات والوان المباني',
  'الكتابة المشوهة للجدران والدهان',
 ' تغطية الشرفات',
  'الهناجر المخالفة فوق السطوح',
  'مجاري وتمديدات التكييف',
  'اطباق الأقمار الصناعية',
  'المظلات',
  'مداخن التهوية في المطاعم',
  'تكسيات الألومنيوم',
  'الاسوار',
  'تشجر الأرصفة وممرات المشاة',
  'الأرصفة المتهالكة',
 ' دهان البر ودرات',
  'حفر الشوارع',
  'نظافة الأماكن العامة',
  'عدم دهان الشوارع',
  'محولات الكهرباء في الشوارع',
  'تسرب المياه',
  'السيارات التالفة',
  'المطبات العشوائية',
  'وقوف السيارات الغير مصرح به',
  'اللوحات التجارية',
  'اللوحات الاعلانيه',
  'اللوحات الارشادية',
  'اللوحات التحذيريه',
  'أعمدة الانارة',
  'الاعمدة والاسلاك الكهربائية',
  'أعمدة الاتصالات',
  'مخالفات البناء',
  'المباني تحت الانشاء',
  'مشاريع الخدمات والحفريات',
  'الحواجز الخرسانية',
  'تسوير المباني تحت الانشاء',
  'نقل مواد البناء',
  'التشوين',
  'تسوير الأراضي البيضاء',
 ' الحدائق والملاعب المهجورة',
  'دورات المياه العامة',
  'الحاويات وتكدس النفايات',
  'الاحواض الزراعية',
  'الباعة الجائلين',
  'اثاث الشوارع',
];

List <String>index1=[ //مراقبة البناء
  'بناء بدون ترخيص',
  'تعديات',
  'احداث جديد',
  'ترميم بدون ترخيص',
  'بلاغ',
  'اخرى',
];
 List <String>index2=[ //المرافق البلدية
  'مظلات سيارات',
  'مخالفات الشركات',
  ' تلفيات المرافق',
  'الحدائق',
  'اخرى',
];
 List <String>index3=[ //الأسواق التجارية
  'نشاط بدون ترخيص',
  'حظائر الماشية',
  'باعة جائلين',
  'الاستراحات',
  'اللوحات',
  'بلاغ',
  'عمليات الأمانة',
  'اخرى',
 ];
 List <String>index4=[ //المواد الغذائية
   'تطبيق ممتثل',
   'تطبيق مخالفة (بلدي)',
   'عدم وجود شهادة صحية',
   'محل بدون ترخيص',
   'بلاغ',
   'اخرى',

]; List <String>index5=[ //النظافة العامة
  'السيارات التالفة',
  'الحاويات',
  'الاشجار',
  'بلاغ',
  'اخرى',

]; List <String>index6=[ //غير مصنفة
  'بلاغ',
  'عمليات الأمانة',
  'هواتف طالبة',
  'شكوى',
  'توجيه ',
  'افادة',
  'الجهات المعنية',
  'لجان',
  'مشاركة',
  'اخرى',

];

   Future<void> printDoc(importanceLevel,location ,
  violationImage ,
  additionalInfo ,
  mainCategory ,
  subCategory) async {
    final image = await imageFromAssetBundle(
      "assets/images/newlogosplashscreen.png",
    );
    final roboto = await rootBundle.load('assets/fonts/Poppins-Bold.ttf');
    var robotoB = pw.Font.ttf(roboto);
    final doc = pw.Document();
    doc.addPage(pw.Page(
      theme:pw.ThemeData.withFont(
          base:  robotoB
      ) ,
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return buildPrintableData(image ,
            importanceLevel: importanceLevel,
            location:location,
            violationImage:violationImage,
             additionalInfo:additionalInfo,
              mainCategory:mainCategory,
             subCategory:subCategory,
          );
        })

    );
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }

}