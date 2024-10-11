import 'package:digital_invoicing/models/comparison_model.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class ComparisionLegend extends StatelessWidget {
  const ComparisionLegend({
    super.key,
    required this.comparisonModel,
  });
  final ComparisonModel comparisonModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "COMPARISON",
              style: Styles.gTWalsheimProRegular10,
            ),
            Text(
              "${comparisonModel.fYear} (${comparisonModel.amount}\$)",
              style: Styles.gTWalsheimProBold14,
            ),
          ],
        ),
        Row(
          children: [
            _buildYear(
              year: comparisonModel.fYear + 1,
              color: AppColors.purple,
            ),
            const SizedBox(width: 11),
            _buildYear(
              year: comparisonModel.fYear,
              color: comparisonModel.color,
            ),
          ],
        )
      ],
    );
  }

  Row _buildYear({required int year, required Color color}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 3,
          backgroundColor: color,
        ),
        const SizedBox(width: 3),
        Text(
          "$year",
          style: Styles.gTWalsheimProRegular10.copyWith(
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
