import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:digital_invoicing/widgets/bottom_sheet_container.dart';
import 'package:digital_invoicing/widgets/client_data_header.dart';
import 'package:digital_invoicing/widgets/custom_bottom_sheet_button.dart';
import 'package:digital_invoicing/widgets/custom_check_box.dart';
import 'package:digital_invoicing/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ClientData extends StatelessWidget {
  const ClientData({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        children: [
          const ClientDataHeader(),
          const SizedBox(height: 30),
          _buildRow(),
          const SizedBox(height: 21),
          const CustomTextField(
            hint: "US 104 191 23 12",
            label: "VAT ID",
          ),
          const SizedBox(height: 21),
          const CustomTextField(
            hint: "34th St. New York, NY",
            label: "Adress",
          ),
          const SizedBox(height: 28),
          Row(
            children: [
              const CustomCheckBox(),
              Text(
                "Save contact",
                style: Styles.gTWalsheimProRegular17.copyWith(
                  color: AppColors.primary,
                ),
              ),
              const Spacer(),
              const CustomBottomSheetButton(),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Row _buildRow() {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomTextField(
            hint: "Softcode Agency",
            label: "Company name",
          ),
        ),
        SizedBox(width: 13),
        Expanded(
          flex: 1,
          child: CustomTextField(
            hint: "Spa",
            label: "Type",
          ),
        ),
      ],
    );
  }
}
