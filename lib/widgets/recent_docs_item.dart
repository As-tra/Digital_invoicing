import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/custom_card_background.dart';
import 'package:digital_invoicing/widgets/recents_docs_tap_tab.dart';
import 'package:digital_invoicing/widgets/transaction_details_list.dart';
import 'package:flutter/material.dart';

class RecentDocsItem extends StatelessWidget {
  const RecentDocsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCardBackground(
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Invoices", style: Styles.gTWalsheimProBold20),
            RecentDocsTabBar(),
            SizedBox(height: 20),
            TransactionDetailsList(),
          ],
        ),
      ),
    );
  }
}
