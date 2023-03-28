import 'package:creditapp/pages/dasboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/color_constants.dart';
import 'constants/string_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: kPrimaryColor,
          ),
        ),
      ),
      home: const DashboardPage(),
    );
  }
}
