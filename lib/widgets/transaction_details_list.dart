import 'package:digital_invoicing/widgets/transaction_details_item.dart';
import 'package:flutter/material.dart';

class TransactionDetailsList extends StatelessWidget {
  const TransactionDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      separatorBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          color: const Color(0xffE2E4EB),
          height: 1,
        );
      },
      itemBuilder: (context, index) {
        return const TransactionDetailsItem();
      },
    );
  }
}
