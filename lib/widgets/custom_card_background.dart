import 'package:digital_invoicing/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomCardBackground extends StatelessWidget {
  const CustomCardBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildShadow(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: _buildDecoration(),
          child: child,
        ),
      ],
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      color: AppColors.white,
      border: Border.all(
        color: AppColors.primary,
        width: .8,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }

  Positioned _buildShadow() {
    return Positioned.fill(
      top: 6,
      right: -5,
      left: 5,
      bottom: -6,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.purple,
          border: Border.all(
            color: AppColors.primary,
            width: .8,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
