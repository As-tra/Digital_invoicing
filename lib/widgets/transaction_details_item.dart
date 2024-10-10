import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionDetailsItem extends StatelessWidget {
  const TransactionDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDateAndStatus(),
        _buildTitle(),
        const Text(
          "Shipbob",
          style: Styles.gTWalsheimProRegular16,
        ),
      ],
    );
  }

  Row _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Logistics services",
          style: Styles.gTWalsheimProMedium18.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          " #12",
          style: Styles.gTWalsheimProMedium18.copyWith(
            color: AppColors.purple,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        const Text(
          "399,99\$",
          style: Styles.gTWalsheimProMedium17,
        ),
      ],
    );
  }

  Row _buildDateAndStatus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "10/10/2024 ",
          style: Styles.gTWalsheimProMedium13,
        ),
        Text(
          " Not yet paid",
          style: Styles.gTWalsheimProMedium13.copyWith(
            color: AppColors.orange,
          ),
        ),
      ],
    );
  }
}
