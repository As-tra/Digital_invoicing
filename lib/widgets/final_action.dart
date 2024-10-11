import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/bottom_sheet_container.dart';
import 'package:flutter/material.dart';

class FinalAction extends StatelessWidget {
  const FinalAction({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Row(
        children: [
          Text(
            "Save as draft",
            style: Styles.gTWalsheimProMedium19.copyWith(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          _buildButton(),
        ],
      ),
    );
  }

  Container _buildButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 34),
      decoration: BoxDecoration(
        color: const Color(0xffE3E3E4),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Text(
        "Create",
        style: Styles.gTWalsheimProBold20.copyWith(
          color: const Color(0xff979799),
        ),
      ),
    );
  }
}
