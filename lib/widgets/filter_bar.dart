import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildContainer(
          child: _buildCalender(),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 18,
          backgroundColor: const Color(0xffF1F2F3),
          child: SvgPicture.asset(Assets.imagesBarChart),
        ),
        const SizedBox(width: 14),
        _buildContainer(
          child: _buildFilter(),
        ),
      ],
    );
  }

  Row _buildFilter() {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesFilter),
        const SizedBox(width: 5),
        const Text(
          "Filter",
          style: Styles.gTWalsheimProBold13,
        ),
      ],
    );
  }

  Row _buildCalender() {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesCalendar),
        const SizedBox(width: 5),
        const Text(
          "2022 (1 jan - today)",
          style: Styles.gTWalsheimProBold13,
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.keyboard_arrow_down,
          size: 18,
          color: AppColors.primary,
        ),
      ],
    );
  }

  Container _buildContainer({required Widget child}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: const Color(0xffF1F2F3),
      ),
      child: child,
    );
  }
}
