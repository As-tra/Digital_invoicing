import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/count_buttet.dart';
import 'package:flutter/material.dart';

class ClientDataHeader extends StatelessWidget {
  const ClientDataHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CounteBullet(count: 2),
        const SizedBox(width: 10),
        const Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Client Data",
              style: Styles.gTWalsheimProBold23,
            ),
          ),
        ),
        const Spacer(),
        _buildContact()
      ],
    );
  }

  Container _buildContact() {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(99),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.people_alt_outlined,
            size: 18,
          ),
          SizedBox(width: 3),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Contacts",
                style: Styles.gTWalsheimProMedium15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
