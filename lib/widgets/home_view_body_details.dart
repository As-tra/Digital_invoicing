import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/widgets/income_and_expense_section.dart';
import 'package:flutter/material.dart';

class HomeViewBodyDetails extends StatelessWidget {
  const HomeViewBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: _buildDecoration(),
      child: ListView(
        children: const [
          SizedBox(height: 24),
          IncomeAndExpenseSection(),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return const BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(21),
        topRight: Radius.circular(21),
      ),
    );
  }
}
