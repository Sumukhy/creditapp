import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/asset_constants.dart';
import '../constants/color_constants.dart';

class CustomRoundedOutlinedButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const CustomRoundedOutlinedButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onTap();
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: kPrimaryColor,
        side: const BorderSide(width: 1, color: kPrimaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 17,
            child: Center(
              child: SvgPicture.asset(
                kDownloadIcon,
                width: 15,
                height: 15,
                alignment: Alignment.center,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: GoogleFonts.figtree(color: kPrimaryColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
