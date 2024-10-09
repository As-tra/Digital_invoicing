import 'package:digital_invoicing/enums/transaction_enum.dart';

class TransactionModel {
  final String amount;
  final String percentage;
  final String image;
  final Transaction type;

  TransactionModel({
    required this.amount,
    required this.percentage,
    required this.image,
    required this.type,
  });
}
