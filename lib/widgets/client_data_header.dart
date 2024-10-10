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
        const Text(
          "Client Data",
          style: Styles.gTWalsheimProBold23,
        ),
        const Spacer(),
        _buildContact()
      ],
    );
  }

  Container _buildContact() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(99),
      ),
      child: const Row(
        children: [
          Icon(Icons.people_alt_outlined),
          SizedBox(width: 3),
          Text(
            "Contacts",
            style: Styles.gTWalsheimProMedium15,
          )
        ],
      ),
    );
  }
}
