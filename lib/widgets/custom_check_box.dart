import 'package:digital_invoicing/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: AppColors.purple,
      value: value,
      onChanged: (change) {
        value = change ?? false;
        setState(() {});
      },
    );
  }
}
