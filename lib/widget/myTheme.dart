import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardColor: Colors.white,
    canvasColor: creamColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: darkBluishColor),
  );
}
