import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class CounteBullet extends StatelessWidget {
  const CounteBullet({
    super.key,
    required this.count,
  });
  final int count;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primary,
      radius: 16,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: AppColors.white,
        child: Text(
          "$count",
          style: Styles.gTWalsheimProBold20,
        ),
      ),
    );
  }
}
