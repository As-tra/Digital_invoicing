import 'package:digital_invoicing/utils/colors.dart';
import 'package:digital_invoicing/utils/styles.dart';
import 'package:flutter/material.dart';

class YearsCounter extends StatefulWidget {
  const YearsCounter({super.key});

  @override
  State<YearsCounter> createState() => _YearsCounterState();
}

class _YearsCounterState extends State<YearsCounter> {
  int currentYear = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildIcon(sign: "-"),
        Text(
          "$currentYear",
          style: Styles.gTWalsheimProMedium20,
        ),
        _buildIcon(sign: "+"),
      ],
    );
  }

  IconButton _buildIcon({required String sign}) {
    return IconButton(
      color: AppColors.white,
      iconSize: 22,
      onPressed: () {
        sign == "+" ? currentYear++ : currentYear--;
        setState(() {});
      },
      icon: Icon(
        sign == "+" ? Icons.arrow_forward_ios : Icons.arrow_back_ios_new,
      ),
    );
  }
}
