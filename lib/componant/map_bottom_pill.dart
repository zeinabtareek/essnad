import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';
import '../screens/map_screen/controller/map_controller.dart';

class MapBottomPill extends StatelessWidget {
  const MapBottomPill({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: K.blackTypingColor.withOpacity(.2),
                blurRadius: 10,
                offset: Offset.zero
            )
          ]
      ),
      child: GetBuilder<MapController>(
          init :MapController(),
          builder:(controller)=>    Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    ClipOval(
                      child:Image.asset('assets/images/AppIcon.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                K.sizedBoxW,
                const Icon(Icons.location_pin,color: K.mainColor,size: 50,)

              ],
            ),),
          K.sizedBoxH,
          Column(
            children: [

                  Text('searchText',
                    style: TextStyle(
                      color: K.secColorAddButton,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const Text('Venta por Libra'),
                  Text("Total Distance: " +
                      controller.distance.toStringAsFixed(2) + " KM",
                    style: TextStyle(
                      color: K.mainColor,
                    ),),

            ],
          )



        ],
        ),
      ),
    );
  }
}
