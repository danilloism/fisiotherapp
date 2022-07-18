import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  colorSchemeSeed: Colors.deepPurple,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      textStyle:
          GoogleFonts.aBeeZee(fontWeight: FontWeight.normal, fontSize: 25),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.deepPurple),
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.actor(color: Colors.black),
    headlineMedium: GoogleFonts.actor(color: Colors.black87),
    headlineSmall: GoogleFonts.aBeeZee(color: Colors.black.withOpacity(0.6)),
    titleLarge: GoogleFonts.aBeeZee(
        color: Colors.deepPurple, fontWeight: FontWeight.bold),
  ),
);
