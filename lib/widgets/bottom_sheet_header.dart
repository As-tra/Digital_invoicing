import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: _buildCloseIcon(context),
        ),
        const Align(
          child: Text(
            "Create a new invoice",
            style: Styles.gTWalsheimProBold20,
          ),
        ),
      ],
    );
  }

  IconButton _buildCloseIcon(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        Icons.close,
        size: 26,
        color: AppColors.primary,
      ),
    );
  }
}
