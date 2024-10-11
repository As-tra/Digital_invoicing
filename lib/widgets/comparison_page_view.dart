import 'package:digital_invoicing/models/comparison_model.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/widgets/comparison_page_view_item.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class ComparisonPageView extends StatefulWidget {
  const ComparisonPageView({super.key});

  @override
  State<ComparisonPageView> createState() => _ComparisonPageViewState();
}

class _ComparisonPageViewState extends State<ComparisonPageView> {
  final PageController _pageController = PageController(
    viewportFraction: .92,
  );
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<ComparisonModel> models = [
      ComparisonModel(
        fYear: 2021,
        amount: "38’079",
        color: AppColors.orange,
      ),
      ComparisonModel(
        fYear: 2020,
        amount: "38’500",
        color: AppColors.yellow,
      ),
    ];
    return ExpandablePageView.builder(
      clipBehavior: Clip.none,
      padEnds: false,
      controller: _pageController,
      itemCount: models.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 16),
          child: ComparisonPageViewItem(
            model: models[index],
          ),
        );
      },
    );
  }
}
