import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesNotFound,
            color: AppColors.lightPurple,
          ),
          const SizedBox(height: 32),
          Text(
            "4 0 4",
            style: Styles.gTWalsheimProBold25.copyWith(
              color: AppColors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
