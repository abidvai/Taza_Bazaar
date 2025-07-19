import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taza_bazar/utils/constants/colors.dart';

class ATextTheme {
  ATextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.nunito(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: AColors.dark,
    ),
    headlineMedium: GoogleFonts.nunito(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: AColors.dark,
    ),
    headlineSmall: GoogleFonts.nunito(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AColors.dark,
    ),

    titleLarge: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: AColors.dark,
    ),
    titleMedium: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AColors.dark,
    ),
    titleSmall: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: AColors.dark,
    ),

    bodyLarge: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AColors.dark,
    ),
    bodyMedium: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: AColors.dark,
    ),
    bodySmall: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AColors.dark.withValues(alpha: 0.5),
    ),

    labelLarge: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: AColors.dark,
    ),
    labelMedium: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: AColors.dark.withValues(alpha: 0.5),
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: GoogleFonts.nunito(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: AColors.light,
    ),
    headlineMedium: GoogleFonts.nunito(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: AColors.light,
    ),
    headlineSmall: GoogleFonts.nunito(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AColors.light,
    ),

    titleLarge: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: AColors.light,
    ),
    titleMedium: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: AColors.light,
    ),
    titleSmall: GoogleFonts.nunito(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: AColors.light,
    ),

    bodyLarge: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AColors.light,
    ),
    bodyMedium: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: AColors.light,
    ),
    bodySmall: GoogleFonts.nunito(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AColors.light.withValues(alpha: 0.5),
    ),

    labelLarge: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: AColors.light,
    ),
    labelMedium: GoogleFonts.nunito(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: AColors.light.withValues(alpha: 0.5),
    ),
  );
}
