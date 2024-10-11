import 'package:digital_invoicing/widgets/comparison_page_view.dart';
import 'package:digital_invoicing/widgets/filter_bar.dart';
import 'package:digital_invoicing/widgets/how_to_improve_notes.dart';
import 'package:digital_invoicing/widgets/revenue_app_bar.dart';
import 'package:digital_invoicing/widgets/revenue_char_card.dart';
import 'package:digital_invoicing/widgets/section_title.dart';
import 'package:flutter/material.dart';

class RevenueViewBody extends StatelessWidget {
  const RevenueViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                RevenueAppBar(),
                SizedBox(height: 12),
                SectionTitle(text: "Revenues"),
                SizedBox(height: 16),
                FilterBar(),
                SizedBox(height: 19),
                RevenueCharCard(),
                SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: ComparisonPageView(),
          ),
          SizedBox(height: 16),
          HowToImproveNotes(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
