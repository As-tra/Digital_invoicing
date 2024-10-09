import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/widgets/custom_add_banner_desc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdsBanner extends StatefulWidget {
  const AdsBanner({super.key});

  @override
  State<AdsBanner> createState() => _AdsBannerState();
}

class _AdsBannerState extends State<AdsBanner> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: isVisible
          ? Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 21),
                  decoration: _buildDecoration(),
                  child: Row(
                    children: [
                      _buildDescription(),
                      _buildCover(),
                    ],
                  ),
                ),
                _closeButton(),
              ],
            )
          : const SizedBox.shrink(),
    );
  }

  Positioned _closeButton() {
    return Positioned(
      top: -6,
      left: -6,
      child: InkWell(
        onTap: () {
          isVisible = false;
          setState(() {});
        },
        child: const CircleAvatar(
          backgroundColor: AppColors.primary,
          radius: 13.5,
          child: CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 13,
            child: Icon(
              Icons.close,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      border: Border.all(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    );
  }

  Expanded _buildCover() {
    return Expanded(
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -10),
            child: Image.asset(Assets.imagesMoney),
          ),
          SvgPicture.asset(Assets.imagesArrow),
        ],
      ),
    );
  }

  Expanded _buildDescription() {
    return const Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 17.0),
        child: CustomAddBannerDescription(),
      ),
    );
  }
}
