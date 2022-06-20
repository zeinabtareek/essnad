
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/constant.dart';

const List latestWorkoutJson = [
  {
    "img" : "assets/images/pie_chart.png",
    "title" : "مهمه جديده",
    "description" : "18 |منهم 3 اليوم ",
    "progressBar" : 0.2,
    "LinearGradientColors" :[Colors.blue, Colors.indigo],
    "icon" :Icon(FontAwesomeIcons.plus,
        size:18,color:Colors.blue),
  },
  {
    "img" : "assets/images/pie_chart.png",
    "title" : "مهمه منجزه",
    "description" : "33 |منهم 5 اليوم ",
    "progressBar" : 0.7,
    "LinearGradientColors" :[K.mainColor, K.secColorSecButton],
    "icon" :Icon(FontAwesomeIcons.check,
        size:18,color:K.mainColor),
  },
  {
    "img" : "assets/images/pie_chart.png",
    "title" : "مهمه قيد التنفيذ",
    "description" : " 13 ",
    "progressBar" : 0.1,
    "LinearGradientColors" :[Colors.orange, Colors.deepOrange],
    "icon" :Icon(FontAwesomeIcons.hourglass,
        size:15,color:Colors.orange),
  },
  {
    "img" : "assets/images/pie_chart.png",
    "title" : "مهمه متأخره ",
    "description" : " 3 ",
    "progressBar" : 0.052,
    "LinearGradientColors" :[K.secColorFirstButton, K.firstColorFirstButton],
    "icon" :Icon(FontAwesomeIcons.thumbtack,
        size:18,color:K.secColorFirstButton),
  }
];

const List latestActivityJson = [
  {
    "img" : "assets/images/pie_chart.png",
    "title" : "Drinking 300ml Water",
    "time_ago" : "About 3 minutes ago",
    "LinearGradientColors" :[K.mainColor, K.secColorSecButton],

  },
  {
    "img" : "assets/images/pie_chart.png",
    "title" : "Eat Snack (Fitbar)",
    "time_ago" : "About 10 minutes ago",
    "LinearGradientColors" :[K.secColorFirstButton, K.firstColorFirstButton],

  },
];
const List weekly = [
      {
        "day": "Sun",
        "count": 0.1,
        "color": [K.mainColor, K.darkGreen]
      },
      {
        "day": "Mon",
        "count": 0.08,
        "color": [K.secondaryColor, K.darkGreen]
      },
      {
        "day": "Tue",
        "count": 0.12,
        "color": [K.buttonColor, K.darkGreen]
      },
      {
        "day": "Wed",
        "count": 0.075,
        "color": [K.secColorSecButton, K.darkGreen]
      },
      {
        "day": "Thu",
        "count": 0.09,
      "color": [K.buttonColor, K.darkGreen]
      },
      {
        "day": "Fri",
        "count": 0.05,
        "color": [K.secondaryColor, K.darkGreen]
      },
      {
        "day": "Sat",
        "count": 0.097,
        "color": [K.mainColor, K.darkGreen]

      }
    ];