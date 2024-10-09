import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: HomeViewBody(),
    );
  }
}
