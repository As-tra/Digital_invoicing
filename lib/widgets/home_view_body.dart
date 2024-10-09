import 'package:digital_invoicing/widgets/custom_app_bar.dart';
import 'package:digital_invoicing/widgets/home_view_body_details.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomAppBar(),
          SizedBox(height: 10),
          Expanded(child: HomeViewBodyDetails()),
        ],
      ),
    );
  }
}
