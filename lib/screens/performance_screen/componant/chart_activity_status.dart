import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../constants/constant.dart';

  List<Color> gradientColors = [
    K.mainColor,
    K.secondaryColor
  ];
LineChartData activityData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
      ),
      titlesData: FlTitlesData(
        show: false,
        leftTitles: AxisTitles(
          // showTitles: false,
        ),
      ),
      borderData: FlBorderData(
          show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots:  [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),

          ],
          isCurved: false,
          color: K.mainColor,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            color:K.secondaryColor,
          ),
        ),
      ],
    );
  }