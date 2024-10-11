

import 'package:digital_invoicing/widgets/revenue_view_body.dart';
import 'package:flutter/material.dart';

class RevenueView extends StatelessWidget {
  const RevenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: RevenueViewBody()),
    );
  }
}