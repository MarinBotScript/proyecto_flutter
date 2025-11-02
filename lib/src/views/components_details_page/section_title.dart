import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Título de sección con o sin icono
class SectionTitle extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color color;
  final Color? iconColor;
  final double fontSize;
  final double iconSize;

  const SectionTitle({
    super.key,
    required this.text,
    this.icon,
    this.color = const Color(0xFF254D35),
    this.iconColor,
    this.fontSize = 20,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return Row(
        children: [
          Icon(icon, color: iconColor ?? color, size: iconSize),
          const SizedBox(width: 2),
          Text(
            text,
            style: GoogleFonts.inter(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: fontSize,
            ),
          ),
        ],
      );
    }

    return Text(
      text,
      style: GoogleFonts.inter(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}