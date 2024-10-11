import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ComparisionBarChart extends StatelessWidget {
  const ComparisionBarChart({super.key, required this.color});
  final Color color;
  static List<List<double>> barsValues = [
    [7.5, 5.6],
    [6.7, 4],
    [4.1, 6.4],
    [7.8, 5.4],
    [5.8, 6.9],
    [7.3, 4.7],
    [5.7, 5.9],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: BarChart(
        BarChartData(
          maxY: 8,
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
      horizontalInterval: 2,
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
          interval: 2,
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
      default:
        text = 'Jul';
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
    return barsValues.asMap().entries.map(
      (ele) {
        return BarChartGroupData(
          barsSpace: -2,
          x: ele.key,
          barRods: [
            BarChartRodData(
              width: 9,
              toY: ele.value[0],
              color: AppColors.purple,
            ),
            BarChartRodData(
              width: 9,
              toY: ele.value[1],
              color: color,
            )
          ],
        );
      },
    ).toList();
  }
}
