import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class RecentDocsTabBar extends StatelessWidget {
  const RecentDocsTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      decoration: _buildDecoration(),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        dividerHeight: 0,
        indicatorPadding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        indicator: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(99),
        ),
        unselectedLabelStyle: Styles.gTWalsheimProRegular17.copyWith(
          color: AppColors.primary,
        ),
        labelStyle: Styles.gTWalsheimProMedium17,
        tabs: ["Credits", "debts"].map(
          (e) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 12,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(e),
              ),
            );
          },
        ).toList(),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      color: const Color(0xffEAEBED),
      borderRadius: BorderRadius.circular(99),
    );
  }
}
