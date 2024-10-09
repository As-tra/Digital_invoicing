import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/custom_percentage_text_widget.dart';
import 'package:flutter/material.dart';

class CustomProfitLegend extends StatelessWidget {
  const CustomProfitLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "23’261\$",
                  style: Styles.gTWalsheimProBold27,
                ),
                SizedBox(width: 13),
                CustomPercentageTextWidget(percentage: "+10%"),
              ],
            ),
            Text(
              "Profit",
              style: Styles.gTWalsheimProRegular16,
            ),
          ],
        ),
        Image(
          image: AssetImage(Assets.imagesProfit),
          height: 50,
        ),
      ],
    );
  }
}
