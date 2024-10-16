import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/views/add_invoice_view.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: FittedBox(
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: AppColors.purple,
          child: const Icon(
            Icons.add,
            color: AppColors.white,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return const AddInvoiceView();
              },
            );
          },
        ),
      ),
    );
  }
}
