import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const purple = Color(0xff5b3fff);
const lighterPurple = Color(0xff9e2d8c);

final themeData = ThemeData(
  colorSchemeSeed: lighterPurple,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      textStyle:
          GoogleFonts.aBeeZee(fontWeight: FontWeight.normal, fontSize: 25),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: const IconThemeData(color: lighterPurple),
    titleTextStyle: GoogleFonts.actor(color: Colors.black, fontSize: 25),
    centerTitle: true,
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.actor(color: Colors.black),
    headlineMedium: GoogleFonts.actor(color: Colors.black87),
    headlineSmall: GoogleFonts.aBeeZee(color: Colors.black.withOpacity(0.6)),
    titleLarge: GoogleFonts.aBeeZee(
      color: lighterPurple,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: GoogleFonts.actor(fontSize: 16),
  ),
);
