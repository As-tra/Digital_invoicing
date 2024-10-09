import 'package:digital_invoicing/models/transaction_model.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/custom_card_background.dart';
import 'package:digital_invoicing/widgets/custom_percentage_text_widget.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return CustomCardBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                transactionModel.image,
                height: 47,
              ),
              CustomPercentageTextWidget(
                percentage: transactionModel.percentage,
              ),
            ],
          ),
          const SizedBox(height: 11),
          Text(
            "${transactionModel.amount}\$",
            style: Styles.gTWalsheimProBold22,
          ),
          Text(
            transactionModel.type.name,
            style: Styles.gTWalsheimProRegular16,
          ),
        ],
      ),
    );
  }
}
