import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';
import '../routes/app_route.dart';

class CustomTasksStatusButton extends StatelessWidget {
  String text ;
  String image;
     CustomTasksStatusButton({
    Key? key,
   required this.text,
   required this.image,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child:RawMaterialButton(
        fillColor: K.mainColor,
        splashColor: Colors.grey,
        textStyle: TextStyle(color: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

          Text(text,style:   TextStyle(
           color: Colors.white, fontSize: 16.0)),
        ImageIcon(AssetImage( image,),size: 30,)
           ]
        ),
        onPressed: () {
          Get.toNamed(AppRoutes.missionScreen);
        },
      ),

      // RaisedButton.icon( elevation: 4.0,
      // icon: Image.asset( image,width: 20,height: 20,) ,
      // color: K.mainColor,
      //     shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10)),
      //     onPressed: (){
      //       Get.toNamed(AppRoutes.missionScreen);
      //     },
      // label: Text(text,style: const TextStyle(
      // color: Colors.white, fontSize: 16.0))),



    );

  }
}
