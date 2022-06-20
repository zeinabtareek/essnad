import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:hijri/hijri_calendar.dart';
import 'package:hijri_picker/hijri_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class NewMissionController extends GetxController{

  Rx<DateTime> dateTime = DateTime.now().obs;
  Rxn<DateTime> newTime = Rxn<DateTime>();
  var selectedDate =   HijriCalendar.now();


  // Future<DateTime?> showCalender({required BuildContext context})async=>
  //     await showDatePicker(
  //       context: context,
  //       lastDate: DateTime(2100),
  //       firstDate: DateTime(2000),
  //       initialDate: dateTime.value,
  //     ) ;
  Future<Null> showCalender(BuildContext context) async {
    final HijriCalendar? picked = await showHijriDatePicker(
      context: context,
      initialDate: selectedDate,
      lastDate: new HijriCalendar()
        ..hYear = 1445
        ..hMonth = 9
        ..hDay = 25,
      firstDate: new HijriCalendar()
        ..hYear = 1438
        ..hMonth = 12
        ..hDay = 25,
      initialDatePickerMode: DatePickerMode.day,
    );
    if (picked != null)
        selectedDate = picked;
    update();

  }
}