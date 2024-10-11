import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/tips_items.dart';
import 'package:flutter/material.dart';

class HowToImproveNotes extends StatelessWidget {
  const HowToImproveNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: _buildHeader(),
        ),
        const SizedBox(height: 16),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 20),
              ChargeMore(),
              SizedBox(width: 12),
              GetPaid(),
            ],
          ),
        )
      ],
    );
  }

  Row _buildHeader() {
    return const Row(
      children: [
        Text(
          "How to improve",
          style: Styles.gTWalsheimProBold25,
        ),
        Spacer(),
        Icon(
          Icons.more_horiz,
          color: AppColors.lightText,
        ),
      ],
    );
  }
}
