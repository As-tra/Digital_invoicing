import 'package:digital_invoicing/models/comparison_model.dart';
import 'package:digital_invoicing/widgets/comparision_bar_chart.dart';
import 'package:digital_invoicing/widgets/comparision_legend.dart';
import 'package:digital_invoicing/widgets/custom_card_background.dart';
import 'package:flutter/material.dart';

class ComparisonPageViewItem extends StatelessWidget {
  const ComparisonPageViewItem({
    super.key,
    required this.model,
  });
  final ComparisonModel model;

  @override
  Widget build(BuildContext context) {
    return CustomCardBackground(
      child: Column(
        children: [
          ComparisionLegend(comparisonModel: model),
          const SizedBox(height: 10),
          ComparisionBarChart(
            color: model.color,
          ),
        ],
      ),
    );
  }
}
