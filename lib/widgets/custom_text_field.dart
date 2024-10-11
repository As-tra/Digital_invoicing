import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, required this.label});
  final String hint, label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.gTWalsheimProRegular16,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        label: Text(label),
        labelStyle: Styles.gTWalsheimProRegular12.copyWith(
          color: AppColors.lightText,
        ),
        hintText: hint,
        hintStyle: Styles.gTWalsheimProRegular16.copyWith(
          color: AppColors.primary,
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffCCCDD9)),
      borderRadius: BorderRadius.all(Radius.circular(6)),
    );
  }
}
