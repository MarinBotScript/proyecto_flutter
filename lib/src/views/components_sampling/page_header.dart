import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Encabezado de página con icono y título
class PageHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color textColor;
  final double fontSize;
  final double iconSize;
  final MainAxisAlignment alignment;

  const PageHeader({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor = const Color(0xFF254D35),
    this.textColor = const Color(0xFF254D35),
    this.fontSize = 20,
    this.iconSize = 24,
    this.alignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        const SizedBox(width: 10),
        Icon(icon, color: iconColor, size: iconSize),
        const SizedBox(width: 8),
        Text(
          title,
          style: GoogleFonts.inter(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}