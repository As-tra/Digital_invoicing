import 'package:digital_invoicing/models/transaction_model.dart';
import 'package:digital_invoicing/utils/assets.dart';
import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildShadow(),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: _buildDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    transactionModel.image,
                    height: 47,
                  ),
                  Row(
                    children: [
                      Image.asset(Assets.imagesUp),
                      const SizedBox(width: 5),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "${transactionModel.percentage} YoY",
                          style: Styles.gTWalsheimProMedium13.copyWith(
                            color: AppColors.purple,
                            fontFamily: "",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 11),
              Text(
                "${transactionModel.amount}\$",
                style: Styles.gTWalsheimProBold22,
              ),
              Text(
                transactionModel.type.name,
                style: Styles.gTWalsheimProRegular16,
              ),
            ],
          ),
        ),
      ],
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      color: AppColors.white,
      border: Border.all(
        color: AppColors.primary,
        width: .8,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }

  Positioned _buildShadow() {
    return Positioned.fill(
      top: 4.5,
      right: -4,
      left: 4,
      bottom: -4.5,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.purple,
          border: Border.all(
            color: AppColors.primary,
            width: .8,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
