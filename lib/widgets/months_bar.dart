import 'package:digital_invoicing/widgets/active_inactive_month_item.dart';
import 'package:flutter/material.dart';

class MonthsBar extends StatefulWidget {
  const MonthsBar({super.key});
  static const List<String> months = [
    "All",
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  @override
  State<MonthsBar> createState() => _MonthsBarState();
}

class _MonthsBarState extends State<MonthsBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: MonthsBar.months.asMap().entries.map((e) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                currentIndex = e.key;
                setState(() {});
              },
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 600),
                child: e.key == currentIndex
                    ? ActiveMonthItem(month: MonthsBar.months[e.key])
                    : InactiveMonthItem(month: MonthsBar.months[e.key]),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
