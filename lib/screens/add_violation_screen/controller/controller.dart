import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:ui' as ui;


class AddViolationController extends GetxController {
  List<dynamic> options = ["عاديه", " مهمه", " مهمه للغايه"];
  static double PIN_INVISIBLE_POSITION = -300;
  static double PIN_VISIBLE_POSITION = 20;
  final screenshotController = ScreenshotController();
  double? pinPillPosition = PIN_INVISIBLE_POSITION;

  List<String> mainCategories = [
    'التشوهات البصرية',
    'مراقبة البناء',
    'المرافق البلدية',
    'الأسواق التجارية',
    'المواد الغذائية',
    'النظافة العامة',
    'غير مصنفة',
  ];
  List<String> index0 = [
    //التشوهات البصرية
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

  List<String> index1 = [
    //مراقبة البناء
    'بناء بدون ترخيص',
    'تعديات',
    'احداث جديد',
    'ترميم بدون ترخيص',
    'بلاغ',
    'اخرى',
  ];
  List<String> index2 = [
    //المرافق البلدية
    'مظلات سيارات',
    'مخالفات الشركات',
    ' تلفيات المرافق',
    'الحدائق',
    'اخرى',
  ];
  List<String> index3 = [
    //الأسواق التجارية
    'نشاط بدون ترخيص',
    'حظائر الماشية',
    'باعة جائلين',
    'الاستراحات',
    'اللوحات',
    'بلاغ',
    'عمليات الأمانة',
    'اخرى',
  ];
  List<String> index4 = [
    //المواد الغذائية
    'تطبيق ممتثل',
    'تطبيق مخالفة (بلدي)',
    'عدم وجود شهادة صحية',
    'محل بدون ترخيص',
    'بلاغ',
    'اخرى',
  ];
  List<String> index5 = [
    //النظافة العامة
    'السيارات التالفة',
    'الحاويات',
    'الاشجار',
    'بلاغ',
    'اخرى',
  ];
  List<String> index6 = [
    //غير مصنفة
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

  final check = false.obs;
  Uint8List? bytes;

  checkFun() {
    check.value = !check.value;
    isChecked(check);
    print(check.value);
    update();
  }

  isChecked(check) {
    try {
      if (check != null) {
        pinPillPosition =
            check != true ? PIN_INVISIBLE_POSITION : PIN_VISIBLE_POSITION;
        update();
      } else {
        print('error');
      }
    } catch (e) {
      throw Exception();
    }
  }

  Future  saveImage(Uint8List x) async {
    bytes = x;
    await [Permission.storage].request();
    const name = 'Esnad ScreenShots';
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '_')
        .replaceAll(':', '_');

    final result = await ImageGallerySaver.saveImage(
      x,
      name: name,
    );
    // return result['filePath'];
  } //save in gallery

  Future saveAndShare(Uint8List x) async {
    bytes = x;
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/f.png');
    image.writeAsBytesSync(bytes!);
    final text = 'Shared From Esnad App';
    await Share.shareFiles([image.path], text: text);
  } //save in mobile

  Future getPdf(Uint8List screenShot) async {
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Expanded(
            child: pw.Image(pw.MemoryImage(screenShot), fit: pw.BoxFit.contain),
          );
        },
      ),
    );

    final String dir = (await getApplicationDocumentsDirectory()).path;
    final String path = '$dir/1.pdf';
    final File file = File(path);
    file.writeAsBytes(await pdf.save());
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdf.save()

     );
     Get.snackbar('Success', 'The Pdf is downloaded successfully ', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));

  } //save as pdf

}
