import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Chip/Badge reutilizable para objetivos, resultados, miembros, etc.
class BadgeChip extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double width;
  final double height;
  final double fontSize;

  const BadgeChip({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    this.width = 148,
    this.height = 37,
    this.fontSize = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: borderColor),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.inter(
          color: textColor,
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}