import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: Styles.gTWalsheimProBold25,
    );
  }
}
