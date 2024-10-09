import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/widgets/months_bar.dart';
import 'package:digital_invoicing/widgets/years_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Assets.imagesQRcode),
              const YearsCounter(),
              Row(
                children: [
                  SvgPicture.asset(Assets.imagesSearch),
                  const SizedBox(width: 9),
                  SvgPicture.asset(Assets.imagesBell),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const MonthsBar(),
        ],
      ),
    );
  }
}
