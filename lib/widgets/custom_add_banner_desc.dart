import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAddBannerDescription extends StatelessWidget {
  const CustomAddBannerDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "February wrap up",
          style: Styles.gTWalsheimProMedium19,
        ),
        Text(
          "Velit offi consequat duis enim velit mollit. Exercitation veniam non.",
          style: Styles.gTWalsheimProLight15,
        ),
      ],
    );
  }
}