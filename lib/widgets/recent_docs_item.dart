import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/custom_card_background.dart';
import 'package:digital_invoicing/widgets/recents_docs_tap_tab.dart';
import 'package:digital_invoicing/widgets/transaction_details_list.dart';
import 'package:flutter/material.dart';

class RecentDocsItem extends StatelessWidget {
  const RecentDocsItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  CustomCardBackground(
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title, style: Styles.gTWalsheimProBold20),
            const SizedBox(height: 9),
            const RecentDocsTabBar(),
            const SizedBox(height: 20),
            const TransactionDetailsList(),
          ],
        ),
      ),
    );
  }
}
