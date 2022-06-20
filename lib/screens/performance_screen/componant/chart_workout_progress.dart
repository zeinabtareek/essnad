import 'dart:ui';
 import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

Color gradientColors =K.secColorFirstButton;
 LineChartData workoutProgressData() {
  return LineChartData(
    gridData: FlGridData(
      getDrawingVerticalLine: (value) {
      return FlLine(
          color: Colors.transparent,
          strokeWidth: 0.1,
        );
      },
    getDrawingHorizontalLine: (value) {
      return FlLine(
          color: const Color(0xff37434d),
          strokeWidth: 0.1,
        );
      }
    ),
    titlesData: FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: bottomTitles,
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,

        ),
        ), rightTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
        ),
    ),
    borderData: FlBorderData(
      show: false,
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 5,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(2.6, 2),
          FlSpot(4.9, 5),
          FlSpot(6.8, 3.1),
          FlSpot(8, 4),
          FlSpot(9.5, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        color:K.mainColor.withOpacity(.9),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(0, 1.5),
          FlSpot(2.5, 1),
          FlSpot(3, 5),
          FlSpot(5, 2),
          FlSpot(7, 4),
          FlSpot(8, 3),
          FlSpot(11, 4),
        ],
        isCurved: true,
        color:K.mainColor.withOpacity(.5),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
        ),
      ),
    ],
  );

}

SideTitles get bottomTitles => SideTitles(
  showTitles: true,
  reservedSize: 32,
  interval: 1,
  getTitlesWidget: bottomTitleWidgets,
);
Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color:K.blackTypingColor,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('Jun', style: style);
      break;
    case 2:
      text = const Text('Feb', style: style);
      break;
    case 4:
      text = const Text('Mar', style: style);
      break;
      case 6:
      text = const Text('Abr', style: style);
      break;
      case 8:
      text = const Text('May', style: style);
      break;
      case 9:
      text = const Text('Jun', style: style);
      break;
      case 10:
      text = const Text('Jul', style: style);
      break;
    default:
      text = const Text('');
      break;
  }

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}

