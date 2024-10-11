import 'package:digital_invoicing/models/legend_model.dart';
import 'package:digital_invoicing/widgets/custom_card_background.dart';
import 'package:digital_invoicing/widgets/custom_profit_legend.dart';
import 'package:digital_invoicing/widgets/revenues_bar_chart.dart';
import 'package:flutter/material.dart';

class RevenueCharCard extends StatelessWidget {
  const RevenueCharCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardBackground(
      child: Column(
        children: [
          CustomProfitLegend(
            legendModel: LegendModel(
              amount: "48’079",
              percentage: "+14%/\$3500 YoY",
              title: "Revenues",
            ),
          ),
          const SizedBox(height: 10),
          const RevenuesBarChart(),
        ],
      ),
    );
  }
}
