import 'package:digital_invoicing/widgets/bottom_sheet_header.dart';
import 'package:digital_invoicing/widgets/client_data.dart';
import 'package:digital_invoicing/widgets/final_action.dart';
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
        child: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 16),
              BottomSheetHeader(),
              SizedBox(height: 24),
              InvoiceInformation(
                title: "Invoice information",
                info: "#27 · 07/08/2022 ",
                count: 1,
              ),
              SizedBox(height: 21),
              ClientData(),
              SizedBox(height: 21),
              InvoiceInformation(
                title: "Items & Payment",
                count: 3,
              ),
              SizedBox(height: 23),
              FinalAction(),
            ],
          ),
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
      left: 16,
      right: 16,
      bottom: MediaQuery.of(context).viewInsets.bottom + 20,
    );
  }
}
