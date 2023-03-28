import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants.dart';
import '../constants/constants.dart';

class KPIWidget extends StatelessWidget {
  final String title;
  final int value;
  final bool isBold;
  const KPIWidget({
    super.key,
    required this.title,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.figtree(fontSize: 12, color: kKPITitleColor),
        ),
        Text(
          indianRupeesFormat.format(value),
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
            color: kSecondaryColor,
          ),
        ),
      ],
    ).animate().fade(duration: 500.ms).scale(duration: 400.ms);
  }
}
