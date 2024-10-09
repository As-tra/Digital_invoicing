import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomProfitChart extends StatelessWidget {
  const CustomProfitChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: LineChart(
        LineChartData(
          maxY: 26,
          minY: 0,
          lineBarsData: _getLinesData,
          borderData: _getBorder(),
          titlesData: _getTitles(),
          gridData: _createGrid(),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (value) => Colors.transparent,
            ),
            getTouchLineStart: (barData, spotIndex) {
              return 0;
            },
            getTouchLineEnd: (barData, spotIndex) => 0,
          ),
        ),
        duration: const Duration(milliseconds: 150),
        curve: Curves.linear,
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

  List<LineChartBarData> get _getLinesData {
    return [
      LineChartBarData(
        color: AppColors.purple,
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.purple.withOpacity(.3),
              AppColors.purple.withOpacity(0),
            ],
          ),
        ),
        barWidth: 2,
        isCurved: true,
        dotData: const FlDotData(show: false),
        spots: const [
          FlSpot(0, 17.5),
          FlSpot(1, 20),
          FlSpot(2, 15),
          FlSpot(3, 13),
          FlSpot(4, 17.5),
          FlSpot(5, 25.5),
          FlSpot(6, 19.8),
          FlSpot(7, 25),
          FlSpot(8, 25.8),
        ],
      ),
    ];
  }
}
