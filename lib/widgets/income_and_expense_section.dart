import 'package:digital_invoicing/enums/transaction_enum.dart';
import 'package:digital_invoicing/models/transaction_model.dart';
import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class IncomeAndExpenseSection extends StatelessWidget {
  const IncomeAndExpenseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TransactionWidget(
            transactionModel: TransactionModel(
              amount: "12’409",
              percentage: "+13%",
              image: Assets.imagesExpenses,
              type: Transaction.expenses,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: TransactionWidget(
            transactionModel: TransactionModel(
              amount: "35’670",
              percentage: "+25%",
              image: Assets.imagesIncome,
              type: Transaction.income,
            ),
          ),
        ),
      ],
    );
  }
}
