import 'package:b_app/screens/add_violation_screen/widgets/screen_shot_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../constants/constant.dart';
import '../controller/controller.dart';

class ShareWithMedia extends StatelessWidget {
  ShareWithMedia({
    Key? key,
  }) : super(key: key);
  final controller = Get.put(AddViolationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: K.whiteColor,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: K.blackTypingColor.withOpacity(.2),
                blurRadius: 10,
                offset: Offset.zero)
          ]),
      child: GetBuilder<AddViolationController>(
        init: AddViolationController(),
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () async {
                controller.checkFun();
                var imageFile = await controller.screenshotController
                    .captureFromWidget(buildImageWidget());
                if (imageFile == null) {
                  Get.snackbar('Error', 'during downloading ',
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 2));
                  return;
                } else {
                  await controller.saveImage(imageFile);
                      Get.snackbar(
                      'Success', 'The image is downloaded successfully ',
                      snackPosition: SnackPosition.BOTTOM,
                      duration: Duration(seconds: 2));
                }
              },
              child: Column(children: [
                const Icon(FontAwesomeIcons.download,
                    size: 30, color: K.grayColor),
                K.sizedBoxH,
                const Text('الحفظ في المعرض'),
              ]),
            ),
            K.sizedBoxW,
            GestureDetector(
              onTap: () async {
                double pixelRatio = MediaQuery.of(context).devicePixelRatio;
                final imageFile = await controller.screenshotController
                    .captureFromWidget(buildImageWidget(),
                        pixelRatio: pixelRatio);
                await controller.saveAndShare(imageFile);
              },
              child: Column(
                children: [
                  const Icon(FontAwesomeIcons.share,
                      size: 30, color: K.grayColor),
                  K.sizedBoxH,
                  const Text('مشاركه'),
                ],
              ),
            ),
            K.sizedBoxW,
            K.sizedBoxW,
            GestureDetector(
              onTap: () async {
           double pixelRatio = MediaQuery.of(context).devicePixelRatio;
          final imageFile =  await controller.screenshotController.captureFromWidget( buildImageWidget(),pixelRatio: pixelRatio) ;
          if(imageFile==null) {
            Get.snackbar('Error', 'during downloading ', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
            return ;
          }
          else{
            await controller.getPdf(imageFile);

          }
              },
              child: Column(
                children: [
                    const Icon(FontAwesomeIcons.filePdf,
                      size: 30, color: K.grayColor),
                  K.sizedBoxH,
                  const Text('حفظ '),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
