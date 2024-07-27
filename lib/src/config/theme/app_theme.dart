import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color PRIMARY = Color(0xFF1CAE81);
  static const Color YELLOW = Color(0xFFFFB300);
  static const Color ASH = Color(0xFFE8E8E8);
  static const Color WHITE = Colors.white;
  static const Color BLACK = Colors.black;

  static ThemeData light = ThemeData(
    primaryColor: AppTheme.PRIMARY,
    scaffoldBackgroundColor: AppTheme.WHITE,

    //? -------------
    textTheme: TextTheme(
      //? -------
      bodySmall: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 12, color: AppTheme.BLACK)),
      bodyMedium: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 15, color: AppTheme.BLACK)),
      bodyLarge: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 18, color: AppTheme.BLACK)),

      //? -------
      titleSmall: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 12, color: AppTheme.BLACK, fontWeight: FontWeight.w700)),
      titleMedium: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 15, color: AppTheme.BLACK, fontWeight: FontWeight.w700)),
      titleLarge: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 18, color: AppTheme.BLACK, fontWeight: FontWeight.w700)),
    ),
  );

  static ThemeData dark = ThemeData(
    primaryColor: AppTheme.PRIMARY,
    textTheme: TextTheme(
      //? -------
      bodySmall: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 12, color: AppTheme.BLACK)),
      bodyMedium: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 15, color: AppTheme.BLACK)),
      bodyLarge: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 18, color: AppTheme.BLACK)),

      //? -------
      titleSmall: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 12, color: AppTheme.BLACK, fontWeight: FontWeight.w700)),
      titleMedium: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 15, color: AppTheme.BLACK, fontWeight: FontWeight.w700)),
      titleLarge: GoogleFonts.urbanist(textStyle: const TextStyle(fontSize: 18, color: AppTheme.BLACK, fontWeight: FontWeight.w700)),
    ),
  );
}
