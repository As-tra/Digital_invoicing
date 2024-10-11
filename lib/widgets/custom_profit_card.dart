import 'package:digital_invoicing/models/legend_model.dart';
import 'package:digital_invoicing/utils/app_router.dart';
import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/widgets/custom_card_background.dart';
import 'package:digital_invoicing/widgets/custom_profit_chart.dart';
import 'package:digital_invoicing/widgets/custom_profit_legend.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomProfitCard extends StatelessWidget {
  const CustomProfitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRouter.revenueView),
      child: CustomCardBackground(
        child: Column(
          children: [
            CustomProfitLegend(
              legendModel: LegendModel(
                amount: "23’261",
                percentage: "+10% YoY",
                title: "Profit",
                image: Assets.imagesProfit,
              ),
            ),
            const SizedBox(height: 10),
            const CustomProfitChart(),
          ],
        ),
      ),
    );
  }
}
