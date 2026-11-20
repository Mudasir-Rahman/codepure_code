import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardColor: Colors.white,
    canvasColor: Colors.white60,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.blueAccent,
    ),
  );
}
