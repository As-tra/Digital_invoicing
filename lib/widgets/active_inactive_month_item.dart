import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class InactiveMonthItem extends StatelessWidget {
  const InactiveMonthItem({super.key, required this.month});
  final String month;

  @override
  Widget build(BuildContext context) {
    return Text(
      month,
      style: Styles.gTWalsheimProRegular17.copyWith(
        color: Colors.white.withOpacity(.7),
      ),
    );
  }
}

class ActiveMonthItem extends StatelessWidget {
  const ActiveMonthItem({super.key, required this.month});
  final String month;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(
        month,
        style: Styles.gTWalsheimProRegular17,
      ),
    );
  }
}
