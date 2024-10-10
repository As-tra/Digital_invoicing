import 'package:digital_invoicing/widgets/custom_card_background.dart';
import 'package:digital_invoicing/widgets/custom_profit_chart.dart';
import 'package:digital_invoicing/widgets/custom_profit_legend.dart';
import 'package:flutter/material.dart';

class CustomProfitCard extends StatelessWidget {
  const CustomProfitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCardBackground(
      child: Column(
        children: [
          CustomProfitLegend(),
          SizedBox(height: 10),
          CustomProfitChart(),
        ],
      ),
    );
  }
}
