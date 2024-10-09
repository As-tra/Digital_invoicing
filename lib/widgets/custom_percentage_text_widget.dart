import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomPercentageTextWidget extends StatelessWidget {
  const CustomPercentageTextWidget({
    super.key,
    required this.percentage,
  });

  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesUp),
        const SizedBox(width: 5),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "$percentage YoY",
            style: Styles.gTWalsheimProMedium13.copyWith(
              color: AppColors.purple,
              fontFamily: "",
            ),
          ),
        ),
      ],
    );
  }
}
