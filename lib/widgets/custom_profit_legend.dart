import 'package:digital_invoicing/models/legend_model.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/custom_percentage_text_widget.dart';
import 'package:flutter/material.dart';

class CustomProfitLegend extends StatelessWidget {
  const CustomProfitLegend({super.key, required this.legendModel});
  final LegendModel legendModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "${legendModel.amount}\$",
                  style: Styles.gTWalsheimProBold27,
                ),
                const SizedBox(width: 13),
                CustomPercentageTextWidget(
                  percentage: legendModel.percentage,
                ),
              ],
            ),
            Text(
              legendModel.title,
              style: Styles.gTWalsheimProRegular16,
            ),
          ],
        ),
        legendModel.image == null
            ? const SizedBox.shrink()
            : Image(
                image: AssetImage(legendModel.image!),
                height: 50,
              ),
      ],
    );
  }
}
