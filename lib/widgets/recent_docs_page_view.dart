import 'package:digital_invoicing/widgets/recent_docs_item.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class RecentDocsPageView extends StatefulWidget {
  const RecentDocsPageView({super.key});

  @override
  State<RecentDocsPageView> createState() => _RecentDocsPageViewState();
}

class _RecentDocsPageViewState extends State<RecentDocsPageView> {
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
    List<String> titles = ["Invoices", "Taxes"];
    return ExpandablePageView.builder(
      clipBehavior: Clip.none,
      padEnds: false,
      controller: _pageController,
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 16),
          child: RecentDocsItem(
            title: titles[index],
          ),
        );
      },
    );
  }
}
