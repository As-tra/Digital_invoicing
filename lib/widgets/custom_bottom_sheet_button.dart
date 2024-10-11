import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottomSheetButton extends StatelessWidget {
  const CustomBottomSheetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.circular(11)
      ),
      child: const Text(
        "Continue",
        style: Styles.gTWalsheimProBold16,
      ),
    );
  }
}
