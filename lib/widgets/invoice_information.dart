import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/bottom_sheet_container.dart';
import 'package:digital_invoicing/widgets/count_buttet.dart';
import 'package:flutter/material.dart';

class InvoiceInformation extends StatelessWidget {
  const InvoiceInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomSheetContainer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            CounteBullet(count: 1),
            SizedBox(width: 10),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Invoice information",
                  style: Styles.gTWalsheimProBold20,
                ),
              ),
            ),
            SizedBox(width: 27),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "#27 · 07/08/2022 ",
                  style: Styles.gTWalsheimProRegular16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
