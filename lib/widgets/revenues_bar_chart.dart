import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RevenuesBarChart extends StatelessWidget {
  const RevenuesBarChart({super.key});

  static List barsValues = [
    7.5,
    8.2,
    4.1,
    7.9,
    5.95,
    7.8,
    5.2,
    9.6,
    3.6,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: BarChart(
        BarChartData(
          maxY: 10,
          minY: 0,
          barGroups: _buildBars(),
          borderData: _getBorder(),
          titlesData: _getTitles(),
          gridData: _createGrid(),
        ),
        swapAnimationDuration: const Duration(milliseconds: 150),
        swapAnimationCurve: Curves.linear,
      ),
    );
  }

  FlBorderData _getBorder() {
    return FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(
          color: Color(0xffE2E4EB),
        ),
        left: BorderSide(
          color: Color(0xffE2E4EB),
        ),
      ),
    );
  }

  FlGridData _createGrid() {
    return FlGridData(
      drawVerticalLine: false,
      drawHorizontalLine: true,
      horizontalInterval: 5,
      getDrawingHorizontalLine: (value) {
        return const FlLine(
          color: Color(0xffE2E4EB),
          strokeWidth: .56,
          dashArray: [6, 6],
        );
      },
    );
  }

  FlTitlesData _getTitles() {
    return FlTitlesData(
      topTitles: const AxisTitles(),
      rightTitles: const AxisTitles(),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          maxIncluded: false,
          interval: 5,
          showTitles: true,
          getTitlesWidget: getLeftTitleWidgets,
        ),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          getTitlesWidget: getBottomTitleWidgets,
        ),
      ),
    );
  }

  Widget getBottomTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value) {
      case 0:
        text = 'Jan';
      case 1:
        text = 'Feb';
      case 2:
        text = 'Mar';
      case 3:
        text = 'Avr';
      case 4:
        text = 'May';
      case 5:
        text = 'Jun';
      case 6:
        text = 'Jul';
      case 7:
        text = 'Aug';
      case 8:
        text = 'Oct';
      default:
        text = 'Sep';
    }
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Text(
        text,
        style: Styles.gTWalsheimProRegular10,
      ),
    );
  }

  Widget getLeftTitleWidgets(double value, TitleMeta meta) {
    return Text(
      "${meta.formattedValue}${meta.formattedValue != '0' ? 'k' : ''}",
      style: Styles.gTWalsheimProRegular10,
    );
  }

  List<BarChartGroupData> _buildBars() {
    return barsValues
        .asMap()
        .entries
        .map(
          (ele) => BarChartGroupData(
            barsSpace: 23,
            x: ele.key,
            barRods: [
              BarChartRodData(
                width: 10,
                toY: ele.value,
                color: AppColors.purple,
              ),
            ],
          ),
        )
        .toList();
  }
}
