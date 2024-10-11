import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/bottom_sheet_container.dart';
import 'package:digital_invoicing/widgets/count_buttet.dart';
import 'package:flutter/material.dart';

class InvoiceInformation extends StatelessWidget {
  const InvoiceInformation({
    super.key,
    required this.title,
    this.info,
    required this.count,
  });
  final String title;
  final String? info;
  final int count;

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            CounteBullet(count: count),
            const SizedBox(width: 10),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: Styles.gTWalsheimProBold20,
                ),
              ),
            ),
            const SizedBox(width: 27),
            info == null
                ? const SizedBox()
                : Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        info!,
                        style: Styles.gTWalsheimProRegular16,
                      ),
                    ),
                  ),
            info == null ? const Spacer() : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
