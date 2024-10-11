import 'package:digital_invoicing/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RevenueAppBar extends StatelessWidget {
  const RevenueAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesArrowBack),
        const Spacer(),
        SvgPicture.asset(Assets.imagesPrint),
        const SizedBox(width: 19),
        SvgPicture.asset(Assets.imagesDownload),
      ],
    );
  }
}
