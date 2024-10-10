import 'package:digital_invoicing/widgets/bottom_sheet_header.dart';
import 'package:digital_invoicing/widgets/client_data.dart';
import 'package:digital_invoicing/widgets/invoice_information.dart';
import 'package:flutter/material.dart';

class AddInvoiceView extends StatelessWidget {
  const AddInvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: .9,
      child: Container(
        decoration: _buildDecoration(),
        padding: _getPadding(context),
        child: const Column(
          children: [
            BottomSheetHeader(),
            SizedBox(height: 24),
            InvoiceInformation(),
            SizedBox(height: 21),
            ClientData(),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      color: const Color(0xffF9F9F9),
      borderRadius: BorderRadius.circular(16),
    );
  }

  EdgeInsets _getPadding(BuildContext context) {
    return EdgeInsets.only(
      top: 16,
      left: 16,
      right: 16,
      bottom: MediaQuery.of(context).viewInsets.bottom + 32,
    );
  }
}
