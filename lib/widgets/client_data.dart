import 'package:digital_invoicing/widgets/bottom_sheet_container.dart';
import 'package:digital_invoicing/widgets/client_data_header.dart';
import 'package:flutter/material.dart';

class ClientData extends StatelessWidget {
  const ClientData({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomSheetContainer(
      child: Column(
        children: [
          ClientDataHeader(),
        ],
      ),
    );
  }
}
