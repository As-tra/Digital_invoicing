import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChargeMore extends StatelessWidget {
  const ChargeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return TipContainer(
      child: Column(
        children: [
          Image.asset(Assets.imagesChargeMore),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 11,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Charge more",
                    style: Styles.gTWalsheimProMedium18,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Velit officia et consequat duis enim velit voliam. ",
                          style: Styles.gTWalsheimProMedium13,
                        ),
                      ),
                      SvgPicture.asset(Assets.imagesArrow),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class GetPaid extends StatelessWidget {
  const GetPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return TipContainer(
      child: Stack(
        children: [
          Positioned(
            left: -50,
            child: Image.asset(Assets.imagesGetPaid),
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Get paid from your clients, faster.",
                        style: Styles.gTWalsheimProBold20,
                      ),
                      SvgPicture.asset(Assets.imagesArrow),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TipContainer extends StatelessWidget {
  const TipContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 210,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.primary),
      ),
      child: child,
    );
  }
}
