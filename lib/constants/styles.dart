import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color active = Color(0xFFF7650F);
Color notActive = Color(0xFFB6B6B6);
Color hoverColor = Color(0xFFD9D9D9);
Color leftBar = Color(0xffFBFBFB);
//Color dark = Color(0xFF363740);
Color darkMain = Color(0xFF121212);
Color white = Color(0xFFffffff);

Text normal(String text, double fontSize, Color color) => Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    );

Text extraNormal(String text, double fontSize, Color color) => Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );

///Right Side content text styling
///
Text contentNormal(String text, double fontSize, Color color) => Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color,
      ),
    );

Text contentNormalLight(String text, double fontSize, Color color) => Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        color: color,
        letterSpacing: 0.5,
      ),
    );
